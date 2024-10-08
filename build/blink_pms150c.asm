;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _toggle_led_PARM_1
	.globl _lfsr_shift_PARM_1
	.globl _main
	.globl _handle_tick
	.globl _load_next_delay_target
	.globl _flash_led
	.globl _toggle_led
	.globl _lfsr_init
	.globl _lfsr_shift
	.globl _get_initial_psudo_rnd
	.globl _sys_init
	.globl __t16c
	.globl __ilrcr
	.globl __gpcs
	.globl __tm2ct
	.globl __tm2c
	.globl __misc
	.globl __gpcc
	.globl __bgtr
	.globl __tm2s
	.globl __paph
	.globl __pac
	.globl __pa
	.globl __padier
	.globl __integs
	.globl __ihrcr
	.globl __eoscr
	.globl __tm2b
	.globl __t16m
	.globl __intrq
	.globl __inten
	.globl __clkmd
	.globl __sp
	.globl __flag
	.globl _load_next_delay_target_PARM_1
	.globl _flash_led_PARM_1
	.globl _rnd_regs
	.globl _leds
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
__flag	=	0x0000
__sp	=	0x0002
__clkmd	=	0x0003
__inten	=	0x0004
__intrq	=	0x0005
__t16m	=	0x0006
__tm2b	=	0x0009
__eoscr	=	0x000a
__ihrcr	=	0x000b
__integs	=	0x000c
__padier	=	0x000d
__pa	=	0x0010
__pac	=	0x0011
__paph	=	0x0012
__tm2s	=	0x0017
__bgtr	=	0x0019
__gpcc	=	0x001a
__misc	=	0x001b
__tm2c	=	0x001c
__tm2ct	=	0x001d
__gpcs	=	0x001e
__ilrcr	=	0x001f
__t16c::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_leds::
	.ds 10
_rnd_regs::
	.ds 4
_lfsr_init_sloc9_1_0:
	.ds 1
_flash_led_PARM_1:
	.ds 1
_flash_led_sloc12_1_0:
	.ds 1
_load_next_delay_target_PARM_1:
	.ds 1
_load_next_delay_target_sloc13_1_0:
	.ds 1
_load_next_delay_target_sloc14_1_0:
	.ds 1
_load_next_delay_target_sloc15_1_0:
	.ds 1
_load_next_delay_target_sloc16_1_0:
	.ds 1
_handle_tick_sloc17_1_0:
	.ds 1
_handle_tick_sloc18_1_0:
	.ds 1
_handle_tick_sloc19_1_0:
	.ds 1
_handle_tick_sloc20_1_0:
	.ds 1
_main_sloc21_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_get_initial_psudo_rnd_sloc0_1_0:
	.ds 1
_get_initial_psudo_rnd_sloc1_1_0:
	.ds 1
_get_initial_psudo_rnd_sloc2_1_0:
	.ds 1
	.area	OSEG (OVR,DATA)
_lfsr_shift_PARM_1:
	.ds 1
_lfsr_shift_sloc3_1_0:
	.ds 1
_lfsr_shift_sloc4_1_0:
	.ds 1
_lfsr_shift_sloc5_1_0:
	.ds 1
_lfsr_shift_sloc6_1_0:
	.ds 1
_lfsr_shift_sloc7_1_0:
	.ds 1
_lfsr_shift_sloc8_1_0:
	.ds 1
	.area	OSEG (OVR,DATA)
_toggle_led_PARM_1:
	.ds 1
_toggle_led_sloc10_1_0:
	.ds 1
_toggle_led_sloc11_1_0:
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	.area	HEADER (ABS)
	.org	 0x0020
	reti
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	.area	PREG (ABS)
	.org 0x00
p::
	.ds 2
	.area	HEADER (ABS)
	.org 0x0000
	nop
	clear	p+1
	mov	a, #s_OSEG
	add	a, #l_OSEG + 1
	and	a, #0xfe
	mov.io	sp, a
	call	___sdcc_external_startup
	not	a
	ceqsn	a, #0xFF
	goto	__sdcc_program_startup
	goto	__sdcc_init_data
	.area GSINIT
__sdcc_init_data:
	mov	a, #s_DATA
	mov	p, a
	goto	00002$
00001$:
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #s_DATA
00002$:
	add	a, #l_DATA
	ceqsn	a, p
	goto	00001$
;	main.c: 33: LED_REG leds[] = {
	mov	a, #0x04
	mov	_leds+0, a
	mov	a, #0x05
	mov	_leds+5, a
	clear	_leds+1
	clear	_leds+6
	mov	a, #0xbb
	mov	_leds+2, a
	mov	a, #0xaa
	mov	_leds+7, a
	clear	_leds+4
	clear	_leds+9
	mov	a, #0x01
	mov	_leds+3, a
	mov	a, #0x01
	mov	_leds+8, a
	.area GSFINAL
	goto	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	goto	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	main.c: 49: void sys_init()
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
;	main.c: 51: CLKMD &= ~(CLKMD_ENABLE_WATCHDOG);
	set0.io	__clkmd, #1
;	main.c: 52: PAC |= LED_SHIFT(LED_BIT_0) | LED_SHIFT(LED_BIT_1);
	mov.io	a, __pac
	or	a, #0x30
	mov.io	__pac, a
;	main.c: 53: LED_OFF(leds[0].led);
	mov	a, _leds+0
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00103$:
	sub	a, #1
	t0sn.io	f, c
	goto	00104$
00105$:
	sl	p
	goto	00103$
00104$:
	mov.io	a, __pa
	or	a, p
	mov.io	__pa, a
;	main.c: 54: LED_OFF(leds[1].led);
	mov	a, _leds+5
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00106$:
	sub	a, #1
	t0sn.io	f, c
	goto	00107$
00108$:
	sl	p
	goto	00106$
00107$:
	mov.io	a, __pa
	or	a, p
	mov.io	__pa, a
;	main.c: 55: }
	ret
;	main.c: 60: uint8_t get_initial_psudo_rnd()
;	-----------------------------------------
;	 function get_initial_psudo_rnd
;	-----------------------------------------
_get_initial_psudo_rnd:
;	main.c: 62: uint8_t res = rnd_regs[0];
	mov	a, _rnd_regs+0
	mov	_get_initial_psudo_rnd_sloc0_1_0+0, a
;	main.c: 63: res ^= rnd_regs[1];
	mov	a, _rnd_regs+1
	xor	a, _get_initial_psudo_rnd_sloc0_1_0+0
	mov	_get_initial_psudo_rnd_sloc1_1_0+0, a
;	main.c: 64: res ^= rnd_regs[2];
	mov	a, _rnd_regs+2
	xor	a, _get_initial_psudo_rnd_sloc1_1_0+0
	mov	_get_initial_psudo_rnd_sloc2_1_0+0, a
;	main.c: 65: res ^= rnd_regs[3];
	mov	a, _rnd_regs+3
	xor	a, _get_initial_psudo_rnd_sloc2_1_0+0
;	main.c: 66: return res;
;	main.c: 67: }
	ret
;	main.c: 70: uint8_t lfsr_shift(uint8_t index)
;	-----------------------------------------
;	 function lfsr_shift
;	-----------------------------------------
_lfsr_shift:
;	main.c: 72: uint8_t first_bit = 0x01 & leds[index].lfs_reg; 
	mov	a, _lfsr_shift_PARM_1+0
	sl	a
	sl	a
	add	a, _lfsr_shift_PARM_1+0
	add	a, #(_leds + 0)
	add	a, #0x02
	mov	_lfsr_shift_sloc3_1_0+0, a
	mov	p, a
	idxm	a, p
	mov	_lfsr_shift_sloc4_1_0+0, a
	and	a, #0x01
	mov	_lfsr_shift_sloc5_1_0+0, a
;	main.c: 73: uint8_t next_bit = leds[index].lfs_reg & 0x01;
	mov	p, a
;	main.c: 74: next_bit ^= (leds[index].lfs_reg >> 4) & 0x01;
	mov	a, _lfsr_shift_sloc4_1_0+0
	swap	a
	and	a, #0x0f
	and	a, #0x01
	xor	p, a
;	main.c: 75: next_bit ^= (leds[index].lfs_reg >> 3) & 0x01;
	mov	a, _lfsr_shift_sloc4_1_0+0
	sr	a
	sr	a
	sr	a
	and	a, #0x01
	xor	p, a
;	main.c: 76: next_bit ^= (leds[index].lfs_reg >> 2) & 0x01;
	mov	a, _lfsr_shift_sloc4_1_0+0
	sr	a
	sr	a
	and	a, #0x01
	xor	a, p
	mov	_lfsr_shift_sloc6_1_0+0, a
;	main.c: 78: leds[index].lfs_reg >>= 1;
	mov	a, _lfsr_shift_sloc4_1_0+0
	mov	_lfsr_shift_sloc7_1_0+0, a
	sr	_lfsr_shift_sloc7_1_0+0
	mov	a, _lfsr_shift_sloc3_1_0+0
	mov	p, a
	mov	a, _lfsr_shift_sloc7_1_0+0
	idxm	p, a
;	main.c: 79: leds[index].lfs_reg |= (next_bit << 7) & 0x80;
	mov	a, _lfsr_shift_sloc6_1_0+0
	sr	a
	mov	a, #0x00
	src	a
	and	a, #0x80
	or	a, _lfsr_shift_sloc7_1_0+0
	mov	_lfsr_shift_sloc8_1_0+0, a
	mov	a, _lfsr_shift_sloc3_1_0+0
	mov	p, a
	mov	a, _lfsr_shift_sloc8_1_0+0
	idxm	p, a
;	main.c: 81: rnd_regs[index] = leds[index].lfs_reg;
	mov	a, #(_rnd_regs + 0)
	add	a, _lfsr_shift_PARM_1+0
	mov	p, a
	mov	a, _lfsr_shift_sloc8_1_0+0
	idxm	p, a
;	main.c: 82: rnd_regs[index+2] = leds[index].lfs_reg;
	mov	a, _lfsr_shift_PARM_1+0
	add	a, #0x02
	add	a, #(_rnd_regs + 0)
	push	af
	mov	a, _lfsr_shift_sloc3_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	xch	a, p
	idxm	p, a
;	main.c: 83: return first_bit;
	mov	a, _lfsr_shift_sloc5_1_0+0
;	main.c: 84: }
	ret
;	main.c: 87: void lfsr_init()
;	-----------------------------------------
;	 function lfsr_init
;	-----------------------------------------
_lfsr_init:
;	main.c: 89: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
	clear	_lfsr_init_sloc9_1_0+0
00103$:
	call	_get_initial_psudo_rnd
	mov	p, a
	mov	a, _lfsr_init_sloc9_1_0+0
	sub	a, p
	t1sn.io	f, c
	goto	00105$
00120$:
;	main.c: 91: lfsr_shift(0);
	clear	_lfsr_shift_PARM_1+0
	call	_lfsr_shift
;	main.c: 92: lfsr_shift(1);
	mov	a, #0x01
	mov	_lfsr_shift_PARM_1+0, a
	call	_lfsr_shift
;	main.c: 89: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
	inc	_lfsr_init_sloc9_1_0+0
	goto	00103$
00105$:
;	main.c: 95: }
	ret
;	main.c: 97: void toggle_led(uint8_t index)
;	-----------------------------------------
;	 function toggle_led
;	-----------------------------------------
_toggle_led:
;	main.c: 99: if (leds[index].on)
	mov	a, _toggle_led_PARM_1+0
	sl	a
	sl	a
	add	a, _toggle_led_PARM_1+0
	add	a, #(_leds + 0)
	mov	_toggle_led_sloc10_1_0+0, a
	add	a, #0x01
	mov	_toggle_led_sloc11_1_0+0, a
	mov	p, a
	idxm	a, p
	ceqsn	a, #0x00
	goto	00112$
00113$:
	goto	00102$
00112$:
;	main.c: 101: LED_OFF(leds[index].led);
	mov	a, _toggle_led_sloc10_1_0+0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00114$:
	sub	a, #1
	t0sn.io	f, c
	goto	00115$
00116$:
	sl	p
	goto	00114$
00115$:
	mov.io	a, __pa
	or	a, p
	mov.io	__pa, a
;	main.c: 102: leds[index].on = 0;
	mov	a, _toggle_led_sloc11_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	goto	00104$
00102$:
;	main.c: 106: LED_ON(leds[index].led);
	mov	a, _toggle_led_sloc10_1_0+0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00117$:
	sub	a, #1
	t0sn.io	f, c
	goto	00118$
00119$:
	sl	p
	goto	00117$
00118$:
	not	p
	mov.io	a, __pa
	and	a, p
	mov.io	__pa, a
;	main.c: 107: leds[index].on = 1;
	mov	a, _toggle_led_sloc11_1_0+0
	mov	p, a
	mov	a, #0x01
	idxm	p, a
00104$:
;	main.c: 109: }
	ret
;	main.c: 111: void flash_led(uint8_t index)
;	-----------------------------------------
;	 function flash_led
;	-----------------------------------------
_flash_led:
;	main.c: 117: for (uint8_t i = 0; i < 7; i++)
	clear	_flash_led_sloc12_1_0+0
00106$:
	mov	a, _flash_led_sloc12_1_0+0
	sub	a, #0x07
	t1sn.io	f, c
	goto	00108$
00136$:
;	main.c: 119: toggle_led(index);
	mov	a, _flash_led_PARM_1+0
	mov	_toggle_led_PARM_1+0, a
	call	_toggle_led
;	main.c: 120: while (cnt++ < SHORT_DELAY) {}
	clear	p
00101$:
	mov	a, p
	inc	p
	ceqsn	a, #0xd8
	nop
00137$:
	t0sn.io	f, c
	goto	00101$
00138$:
;	main.c: 117: for (uint8_t i = 0; i < 7; i++)
	inc	_flash_led_sloc12_1_0+0
	goto	00106$
00108$:
;	main.c: 125: }
	ret
;	main.c: 127: void load_next_delay_target(uint8_t index)
;	-----------------------------------------
;	 function load_next_delay_target
;	-----------------------------------------
_load_next_delay_target:
;	main.c: 129: leds[index].delay_target = (lfsr_shift(index) << 2) | (lfsr_shift(index) << 1) | lfsr_shift(index);
	mov	a, _load_next_delay_target_PARM_1+0
	sl	a
	sl	a
	add	a, _load_next_delay_target_PARM_1+0
	add	a, #(_leds + 0)
	add	a, #0x03
	mov	_load_next_delay_target_sloc13_1_0+0, a
	mov	a, _load_next_delay_target_PARM_1+0
	mov	_lfsr_shift_PARM_1+0, a
	call	_lfsr_shift
	mov	_load_next_delay_target_sloc14_1_0+0, a
	sl	_load_next_delay_target_sloc14_1_0+0
	sl	_load_next_delay_target_sloc14_1_0+0
	mov	a, _load_next_delay_target_PARM_1+0
	mov	_lfsr_shift_PARM_1+0, a
	call	_lfsr_shift
	sl	a
	or	a, _load_next_delay_target_sloc14_1_0+0
	mov	_load_next_delay_target_sloc15_1_0+0, a
	mov	a, _load_next_delay_target_PARM_1+0
	mov	_lfsr_shift_PARM_1+0, a
	call	_lfsr_shift
	or	a, _load_next_delay_target_sloc15_1_0+0
	mov	_load_next_delay_target_sloc16_1_0+0, a
	mov	a, _load_next_delay_target_sloc13_1_0+0
	mov	p, a
	mov	a, _load_next_delay_target_sloc16_1_0+0
	idxm	p, a
;	main.c: 130: leds[index].delay_target += 2;
	mov	a, _load_next_delay_target_sloc16_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _load_next_delay_target_sloc13_1_0+0
	xch	a, p
	idxm	p, a
;	main.c: 132: }
	ret
;	main.c: 134: void handle_tick()
;	-----------------------------------------
;	 function handle_tick
;	-----------------------------------------
_handle_tick:
;	main.c: 136: for (uint8_t i = 0; i < 2; i++)
	clear	_handle_tick_sloc17_1_0+0
00108$:
	mov	a, _handle_tick_sloc17_1_0+0
	sub	a, #0x02
	t1sn.io	f, c
	goto	00110$
00137$:
;	main.c: 138: leds[i].delay_count++;
	mov	a, _handle_tick_sloc17_1_0+0
	sl	a
	sl	a
	add	a, _handle_tick_sloc17_1_0+0
	add	a, #(_leds + 0)
	mov	_handle_tick_sloc18_1_0+0, a
	add	a, #0x04
	mov	p, a
	idxm	a, p
	add	a, #0x01
	mov	_handle_tick_sloc19_1_0+0, a
	idxm	p, a
;	main.c: 139: if (leds[i].delay_count >= leds[i].delay_target) 
	mov	a, _handle_tick_sloc18_1_0+0
	add	a, #0x03
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _handle_tick_sloc19_1_0+0
	sub	a, p
	t0sn.io	f, c
	goto	00109$
00138$:
;	main.c: 141: if (leds[i].on)
	mov	a, _handle_tick_sloc18_1_0+0
	add	a, #0x01
	mov	_handle_tick_sloc20_1_0+0, a
	mov	p, a
	idxm	a, p
	ceqsn	a, #0x00
	goto	00139$
00140$:
	goto	00102$
00139$:
;	main.c: 143: LED_OFF(leds[i].led);
	mov	a, _handle_tick_sloc18_1_0+0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00141$:
	sub	a, #1
	t0sn.io	f, c
	goto	00142$
00143$:
	sl	p
	goto	00141$
00142$:
	mov.io	a, __pa
	or	a, p
	mov.io	__pa, a
;	main.c: 144: leds[i].on = 0;
	mov	a, _handle_tick_sloc20_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	goto	00103$
00102$:
;	main.c: 148: flash_led(i);
	mov	a, _handle_tick_sloc17_1_0+0
	mov	_flash_led_PARM_1+0, a
	call	_flash_led
00103$:
;	main.c: 151: load_next_delay_target(i);
	mov	a, _handle_tick_sloc17_1_0+0
	mov	_load_next_delay_target_PARM_1+0, a
	call	_load_next_delay_target
;	main.c: 152: leds[i].delay_count = 0;
	mov	a, _handle_tick_sloc17_1_0+0
	sl	a
	sl	a
	add	a, _handle_tick_sloc17_1_0+0
	add	a, #(_leds + 0)
	add	a, #0x04
	mov	p, a
	mov	a, #0x00
	idxm	p, a
00109$:
;	main.c: 136: for (uint8_t i = 0; i < 2; i++)
	inc	_handle_tick_sloc17_1_0+0
	goto	00108$
00110$:
;	main.c: 155: }
	ret
;	main.c: 157: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 159: uint16_t cnt = 0;
	clear	_main_sloc21_1_0+0
	clear	_main_sloc21_1_0+1
;	main.c: 160: sys_init();
	call	_sys_init
;	main.c: 161: lfsr_init();
	call	_lfsr_init
;	main.c: 167: while (cnt++ < delay) {}
00101$:
	mov	a, _main_sloc21_1_0+1
	mov	p, a
	mov	a, _main_sloc21_1_0+0
	inc	_main_sloc21_1_0+0
	addc	_main_sloc21_1_0+1
	sub	a, #0x3a
	mov	a, #0x0a
	xch	a, p
	subc	a, p
	t0sn.io	f, c
	goto	00101$
00121$:
;	main.c: 168: cnt = 0;        
	clear	_main_sloc21_1_0+0
	clear	_main_sloc21_1_0+1
;	main.c: 169: handle_tick();
	call	_handle_tick
	goto	00101$
;	main.c: 179: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
