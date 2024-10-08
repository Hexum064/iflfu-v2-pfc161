;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mpdk14
	

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
	.globl __rop
	.globl __ilrcr
	.globl __tm3b
	.globl __tm3s
	.globl __tm3ct
	.globl __tm3c
	.globl __lvdc
	.globl __tkcl
	.globl __tkch
	.globl __tps2
	.globl __tps
	.globl __tke1
	.globl __tke2
	.globl __tcc
	.globl __ts
	.globl __tm2b
	.globl __tm2s
	.globl __tm2ct
	.globl __tm2c
	.globl __misclvr
	.globl __bgtr
	.globl __gpcs
	.globl __gpcc
	.globl __pbpl
	.globl __pbph
	.globl __pbc
	.globl __pb
	.globl __papl
	.globl __paph
	.globl __pac
	.globl __pa
	.globl __misc2
	.globl __pbdier
	.globl __padier
	.globl __integs
	.globl __ihrcr
	.globl __eoscr
	.globl __misc
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
__misc	=	0x0008
__eoscr	=	0x000a
__ihrcr	=	0x000b
__integs	=	0x000c
__padier	=	0x000d
__pbdier	=	0x000e
__misc2	=	0x000f
__pa	=	0x0010
__pac	=	0x0011
__paph	=	0x0012
__papl	=	0x0013
__pb	=	0x0014
__pbc	=	0x0015
__pbph	=	0x0016
__pbpl	=	0x0017
__gpcc	=	0x0018
__gpcs	=	0x0019
__bgtr	=	0x001a
__misclvr	=	0x001b
__tm2c	=	0x001c
__tm2ct	=	0x001d
__tm2s	=	0x001e
__tm2b	=	0x001f
__ts	=	0x0020
__tcc	=	0x0021
__tke2	=	0x0022
__tke1	=	0x0024
__tps	=	0x0026
__tps2	=	0x0028
__tkch	=	0x002b
__tkcl	=	0x002c
__lvdc	=	0x002d
__tm3c	=	0x0032
__tm3ct	=	0x0033
__tm3s	=	0x0034
__tm3b	=	0x0035
__ilrcr	=	0x0039
__rop	=	0x003a
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
	cneqsn	a, #0x00
	goto	__sdcc_init_data
	goto	__sdcc_program_startup
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
;	main.c: 34: LED_REG leds[] = {
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
;	main.c: 50: void sys_init()
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
;	main.c: 52: CLKMD &= ~(CLKMD_ENABLE_WATCHDOG);
	set0.io	__clkmd, #1
;	main.c: 53: CLKMD |= CLKMD_ENABLE_IHRC | CLKMD_IHRC_DIV2;
	mov.io	a, __clkmd
	or	a, #0x30
	mov.io	__clkmd, a
;	main.c: 54: PAC |= LED_SHIFT(LED_BIT_0) | LED_SHIFT(LED_BIT_1);
	mov.io	a, __pac
	or	a, #0x30
	mov.io	__pac, a
;	main.c: 55: LED_OFF(leds[0].led);
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
;	main.c: 56: LED_OFF(leds[1].led);
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
;	main.c: 57: }
	ret
;	main.c: 62: uint8_t get_initial_psudo_rnd()
;	-----------------------------------------
;	 function get_initial_psudo_rnd
;	-----------------------------------------
_get_initial_psudo_rnd:
;	main.c: 64: uint8_t res = rnd_regs[0];
	mov	a, _rnd_regs+0
	mov	_get_initial_psudo_rnd_sloc0_1_0+0, a
;	main.c: 65: res ^= rnd_regs[1];
	mov	a, _rnd_regs+1
	xor	a, _get_initial_psudo_rnd_sloc0_1_0+0
	mov	_get_initial_psudo_rnd_sloc1_1_0+0, a
;	main.c: 66: res ^= rnd_regs[2];
	mov	a, _rnd_regs+2
	xor	a, _get_initial_psudo_rnd_sloc1_1_0+0
	mov	_get_initial_psudo_rnd_sloc2_1_0+0, a
;	main.c: 67: res ^= rnd_regs[3];
	mov	a, _rnd_regs+3
	xor	a, _get_initial_psudo_rnd_sloc2_1_0+0
;	main.c: 68: return res;
;	main.c: 69: }
	ret
;	main.c: 72: uint8_t lfsr_shift(uint8_t index)
;	-----------------------------------------
;	 function lfsr_shift
;	-----------------------------------------
_lfsr_shift:
;	main.c: 74: uint8_t first_bit = 0x01 & leds[index].lfs_reg; 
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
;	main.c: 75: uint8_t next_bit = leds[index].lfs_reg & 0x01;
	mov	p, a
;	main.c: 76: next_bit ^= (leds[index].lfs_reg >> 4) & 0x01;
	mov	a, _lfsr_shift_sloc4_1_0+0
	swap	a
	and	a, #0x0f
	and	a, #0x01
	xor	p, a
;	main.c: 77: next_bit ^= (leds[index].lfs_reg >> 3) & 0x01;
	mov	a, _lfsr_shift_sloc4_1_0+0
	sr	a
	sr	a
	sr	a
	and	a, #0x01
	xor	p, a
;	main.c: 78: next_bit ^= (leds[index].lfs_reg >> 2) & 0x01;
	mov	a, _lfsr_shift_sloc4_1_0+0
	sr	a
	sr	a
	and	a, #0x01
	xor	a, p
	mov	_lfsr_shift_sloc6_1_0+0, a
;	main.c: 80: leds[index].lfs_reg >>= 1;
	mov	a, _lfsr_shift_sloc4_1_0+0
	mov	_lfsr_shift_sloc7_1_0+0, a
	sr	_lfsr_shift_sloc7_1_0+0
	mov	a, _lfsr_shift_sloc3_1_0+0
	mov	p, a
	mov	a, _lfsr_shift_sloc7_1_0+0
	idxm	p, a
;	main.c: 81: leds[index].lfs_reg |= (next_bit << 7) & 0x80;
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
;	main.c: 83: rnd_regs[index] = leds[index].lfs_reg;
	mov	a, #(_rnd_regs + 0)
	add	a, _lfsr_shift_PARM_1+0
	mov	p, a
	mov	a, _lfsr_shift_sloc8_1_0+0
	idxm	p, a
;	main.c: 84: rnd_regs[index+2] = leds[index].lfs_reg;
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
;	main.c: 85: return first_bit;
	mov	a, _lfsr_shift_sloc5_1_0+0
;	main.c: 86: }
	ret
;	main.c: 89: void lfsr_init()
;	-----------------------------------------
;	 function lfsr_init
;	-----------------------------------------
_lfsr_init:
;	main.c: 91: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
	clear	_lfsr_init_sloc9_1_0+0
00103$:
	call	_get_initial_psudo_rnd
	mov	p, a
	mov	a, _lfsr_init_sloc9_1_0+0
	sub	a, p
	t1sn.io	f, c
	goto	00105$
00120$:
;	main.c: 93: lfsr_shift(0);
	clear	_lfsr_shift_PARM_1+0
	call	_lfsr_shift
;	main.c: 94: lfsr_shift(1);
	mov	a, #0x01
	mov	_lfsr_shift_PARM_1+0, a
	call	_lfsr_shift
;	main.c: 91: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
	inc	_lfsr_init_sloc9_1_0+0
	goto	00103$
00105$:
;	main.c: 97: }
	ret
;	main.c: 99: void toggle_led(uint8_t index)
;	-----------------------------------------
;	 function toggle_led
;	-----------------------------------------
_toggle_led:
;	main.c: 101: if (leds[index].on)
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
	cneqsn	a, #0x00
	goto	00102$
00112$:
;	main.c: 103: LED_OFF(leds[index].led);
	mov	a, _toggle_led_sloc10_1_0+0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00113$:
	sub	a, #1
	t0sn.io	f, c
	goto	00114$
00115$:
	sl	p
	goto	00113$
00114$:
	mov.io	a, __pa
	or	a, p
	mov.io	__pa, a
;	main.c: 104: leds[index].on = 0;
	mov	a, _toggle_led_sloc11_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	goto	00104$
00102$:
;	main.c: 108: LED_ON(leds[index].led);
	mov	a, _toggle_led_sloc10_1_0+0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00116$:
	sub	a, #1
	t0sn.io	f, c
	goto	00117$
00118$:
	sl	p
	goto	00116$
00117$:
	not	p
	mov.io	a, __pa
	and	a, p
	mov.io	__pa, a
;	main.c: 109: leds[index].on = 1;
	mov	a, _toggle_led_sloc11_1_0+0
	mov	p, a
	mov	a, #0x01
	idxm	p, a
00104$:
;	main.c: 111: }
	ret
;	main.c: 113: void flash_led(uint8_t index)
;	-----------------------------------------
;	 function flash_led
;	-----------------------------------------
_flash_led:
;	main.c: 119: for (uint8_t i = 0; i < 7; i++)
	clear	_flash_led_sloc12_1_0+0
00106$:
	mov	a, _flash_led_sloc12_1_0+0
	sub	a, #0x07
	t1sn.io	f, c
	goto	00108$
00136$:
;	main.c: 121: toggle_led(index);
	mov	a, _flash_led_PARM_1+0
	mov	_toggle_led_PARM_1+0, a
	call	_toggle_led
;	main.c: 122: while (cnt++ < SHORT_DELAY) {}
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
;	main.c: 119: for (uint8_t i = 0; i < 7; i++)
	inc	_flash_led_sloc12_1_0+0
	goto	00106$
00108$:
;	main.c: 127: }
	ret
;	main.c: 129: void load_next_delay_target(uint8_t index)
;	-----------------------------------------
;	 function load_next_delay_target
;	-----------------------------------------
_load_next_delay_target:
;	main.c: 131: leds[index].delay_target = (lfsr_shift(index) << 2) | (lfsr_shift(index) << 1) | lfsr_shift(index);
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
;	main.c: 132: leds[index].delay_target += 2;
	mov	a, _load_next_delay_target_sloc16_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _load_next_delay_target_sloc13_1_0+0
	xch	a, p
	idxm	p, a
;	main.c: 134: }
	ret
;	main.c: 136: void handle_tick()
;	-----------------------------------------
;	 function handle_tick
;	-----------------------------------------
_handle_tick:
;	main.c: 138: for (uint8_t i = 0; i < 2; i++)
	clear	_handle_tick_sloc17_1_0+0
00108$:
	mov	a, _handle_tick_sloc17_1_0+0
	sub	a, #0x02
	t1sn.io	f, c
	goto	00110$
00137$:
;	main.c: 140: leds[i].delay_count++;
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
;	main.c: 141: if (leds[i].delay_count >= leds[i].delay_target) 
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
;	main.c: 143: if (leds[i].on)
	mov	a, _handle_tick_sloc18_1_0+0
	add	a, #0x01
	mov	_handle_tick_sloc20_1_0+0, a
	mov	p, a
	idxm	a, p
	cneqsn	a, #0x00
	goto	00102$
00139$:
;	main.c: 145: LED_OFF(leds[i].led);
	mov	a, _handle_tick_sloc18_1_0+0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #0x01
	mov	p, a
	pop	af
00140$:
	sub	a, #1
	t0sn.io	f, c
	goto	00141$
00142$:
	sl	p
	goto	00140$
00141$:
	mov.io	a, __pa
	or	a, p
	mov.io	__pa, a
;	main.c: 146: leds[i].on = 0;
	mov	a, _handle_tick_sloc20_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	goto	00103$
00102$:
;	main.c: 150: flash_led(i);
	mov	a, _handle_tick_sloc17_1_0+0
	mov	_flash_led_PARM_1+0, a
	call	_flash_led
00103$:
;	main.c: 153: load_next_delay_target(i);
	mov	a, _handle_tick_sloc17_1_0+0
	mov	_load_next_delay_target_PARM_1+0, a
	call	_load_next_delay_target
;	main.c: 154: leds[i].delay_count = 0;
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
;	main.c: 138: for (uint8_t i = 0; i < 2; i++)
	inc	_handle_tick_sloc17_1_0+0
	goto	00108$
00110$:
;	main.c: 157: }
	ret
;	main.c: 159: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 161: uint16_t cnt = 0;
	clear	_main_sloc21_1_0+0
	clear	_main_sloc21_1_0+1
;	main.c: 162: sys_init();
	call	_sys_init
;	main.c: 163: lfsr_init();
	call	_lfsr_init
;	main.c: 169: while (cnt++ < delay) {}
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
;	main.c: 170: cnt = 0;        
	clear	_main_sloc21_1_0+0
	clear	_main_sloc21_1_0+1
;	main.c: 171: handle_tick();
	call	_handle_tick
	goto	00101$
;	main.c: 181: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
