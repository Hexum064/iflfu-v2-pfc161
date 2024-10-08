#include <stdint.h>
#include <stdio.h>
#include "easypdk/pdk.h" 
// #include "easypdk/pms150c.h"
#include "easypdk/pfc161.h"

// LED is placed on the PA4 pin (Port A, Bit 4) with a current sink configuration
#define LED_BIT_0 4
#define LED_BIT_1 5
// LED is active low (current sink), so define helpers for better readability below

#define LED_SHIFT(p) (1 << (p))
//logic is switched because we are sinking the current (pin low turns leds on)
#define LED_ON(p) (PA &= ~(LED_SHIFT(p)))
#define LED_OFF(p) (PA |= (LED_SHIFT(p)))

//these delays are too short for the pms150c
#define DELAY 0xA3A //about 1hz
#define SHORT_DELAY 0xD8 

#define LFSR_SEED_0 0xBB
#define LFSR_SEED_1 0xAA

typedef struct LED_REG 
{
    uint8_t led;
    uint8_t on;
    uint8_t lfs_reg;
    uint8_t delay_target;
    uint8_t delay_count;
} LED_REG;

LED_REG leds[] = {
    [0].led = LED_BIT_0,
    [1].led = LED_BIT_1,
    [0].on = 0,
    [1].on = 0,
    [0].lfs_reg = LFSR_SEED_0,
    [1].lfs_reg = LFSR_SEED_1,
    [0].delay_count = 0,
    [1].delay_count = 0,
    [0].delay_target = 1,
    [1].delay_target = 1,
};

uint8_t rnd_regs[4];


void sys_init()
{
    CLKMD &= ~(CLKMD_ENABLE_WATCHDOG);
    CLKMD |= CLKMD_ENABLE_IHRC | CLKMD_IHRC_DIV2;
    PAC |= LED_SHIFT(LED_BIT_0) | LED_SHIFT(LED_BIT_1);
    LED_OFF(leds[0].led);
    LED_OFF(leds[1].led);
}

//Reads the values of 8 uninitialized RAM registeres and XORs them together
//These registeres will later be written to help make their uninitialized value
//less deterministic
uint8_t get_initial_psudo_rnd()
{
    uint8_t res = rnd_regs[0];
    res ^= rnd_regs[1];
    res ^= rnd_regs[2];
    res ^= rnd_regs[3];
    return res;
}


uint8_t lfsr_shift(uint8_t index)
{
	uint8_t first_bit = 0x01 & leds[index].lfs_reg; 
	uint8_t next_bit = leds[index].lfs_reg & 0x01;
	next_bit ^= (leds[index].lfs_reg >> 4) & 0x01;
	next_bit ^= (leds[index].lfs_reg >> 3) & 0x01;
	next_bit ^= (leds[index].lfs_reg >> 2) & 0x01;

	leds[index].lfs_reg >>= 1;
	leds[index].lfs_reg |= (next_bit << 7) & 0x80;
    //Writing to help make the uninitialized value (on restart) more random
    rnd_regs[index] = leds[index].lfs_reg;
    rnd_regs[index+2] = leds[index].lfs_reg;
	return first_bit;
}

//Try to start the lfsr at a random place
void lfsr_init()
{
    for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
    {
        lfsr_shift(0);
        lfsr_shift(1);
    }

}

void toggle_led(uint8_t index)
{
    if (leds[index].on)
    {
        LED_OFF(leds[index].led);
        leds[index].on = 0;
    }
    else 
    {
        LED_ON(leds[index].led);
        leds[index].on = 1;
    }
}

void flash_led(uint8_t index)
{
    uint8_t cnt = 0;
    //the led should be off first
    
    //Odd number should leave the led on
    for (uint8_t i = 0; i < 7; i++)
    {
        toggle_led(index);
        while (cnt++ < SHORT_DELAY) {}
        cnt = 0;    
    }


}

void load_next_delay_target(uint8_t index)
{
    leds[index].delay_target = (lfsr_shift(index) << 2) | (lfsr_shift(index) << 1) | lfsr_shift(index);
    leds[index].delay_target += 2;
    
}

void handle_tick()
{
    for (uint8_t i = 0; i < 2; i++)
    {
        leds[i].delay_count++;
        if (leds[i].delay_count >= leds[i].delay_target) 
        {
            if (leds[i].on)
            {
                LED_OFF(leds[i].led);
                leds[i].on = 0;
            }
            else
            {
                flash_led(i);
            }

            load_next_delay_target(i);
            leds[i].delay_count = 0;
        }
    }
}

void main(void) {
 
    uint16_t cnt = 0;
    sys_init();
    lfsr_init();

    uint16_t c = 0;

    while(1){
        
        while (cnt++ < DELAY) {}
        cnt = 0;        
        handle_tick();

    }
}