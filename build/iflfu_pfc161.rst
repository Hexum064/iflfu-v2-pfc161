                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mpdk14
                                      7 	
                                      8 
                                      9 ; default segment ordering in RAM for linker
                                     10 	.area DATA
                                     11 	.area OSEG (OVR,DATA)
                                     12 
                                     13 ;--------------------------------------------------------
                                     14 ; Public variables in this module
                                     15 ;--------------------------------------------------------
                                     16 	.globl _toggle_led_PARM_1
                                     17 	.globl _lfsr_shift_PARM_1
                                     18 	.globl _main
                                     19 	.globl _handle_tick
                                     20 	.globl _load_next_delay_target
                                     21 	.globl _flash_led
                                     22 	.globl _toggle_led
                                     23 	.globl _lfsr_init
                                     24 	.globl _lfsr_shift
                                     25 	.globl _get_initial_psudo_rnd
                                     26 	.globl _sys_init
                                     27 	.globl __t16c
                                     28 	.globl __rop
                                     29 	.globl __ilrcr
                                     30 	.globl __tm3b
                                     31 	.globl __tm3s
                                     32 	.globl __tm3ct
                                     33 	.globl __tm3c
                                     34 	.globl __lvdc
                                     35 	.globl __tkcl
                                     36 	.globl __tkch
                                     37 	.globl __tps2
                                     38 	.globl __tps
                                     39 	.globl __tke1
                                     40 	.globl __tke2
                                     41 	.globl __tcc
                                     42 	.globl __ts
                                     43 	.globl __tm2b
                                     44 	.globl __tm2s
                                     45 	.globl __tm2ct
                                     46 	.globl __tm2c
                                     47 	.globl __misclvr
                                     48 	.globl __bgtr
                                     49 	.globl __gpcs
                                     50 	.globl __gpcc
                                     51 	.globl __pbpl
                                     52 	.globl __pbph
                                     53 	.globl __pbc
                                     54 	.globl __pb
                                     55 	.globl __papl
                                     56 	.globl __paph
                                     57 	.globl __pac
                                     58 	.globl __pa
                                     59 	.globl __misc2
                                     60 	.globl __pbdier
                                     61 	.globl __padier
                                     62 	.globl __integs
                                     63 	.globl __ihrcr
                                     64 	.globl __eoscr
                                     65 	.globl __misc
                                     66 	.globl __t16m
                                     67 	.globl __intrq
                                     68 	.globl __inten
                                     69 	.globl __clkmd
                                     70 	.globl __sp
                                     71 	.globl __flag
                                     72 	.globl _load_next_delay_target_PARM_1
                                     73 	.globl _flash_led_PARM_1
                                     74 	.globl _rnd_regs
                                     75 	.globl _leds
                                     76 ;--------------------------------------------------------
                                     77 ; special function registers
                                     78 ;--------------------------------------------------------
                                     79 	.area RSEG (ABS)
      000000                         80 	.org 0x0000
                           000000    81 __flag	=	0x0000
                           000002    82 __sp	=	0x0002
                           000003    83 __clkmd	=	0x0003
                           000004    84 __inten	=	0x0004
                           000005    85 __intrq	=	0x0005
                           000006    86 __t16m	=	0x0006
                           000008    87 __misc	=	0x0008
                           00000A    88 __eoscr	=	0x000a
                           00000B    89 __ihrcr	=	0x000b
                           00000C    90 __integs	=	0x000c
                           00000D    91 __padier	=	0x000d
                           00000E    92 __pbdier	=	0x000e
                           00000F    93 __misc2	=	0x000f
                           000010    94 __pa	=	0x0010
                           000011    95 __pac	=	0x0011
                           000012    96 __paph	=	0x0012
                           000013    97 __papl	=	0x0013
                           000014    98 __pb	=	0x0014
                           000015    99 __pbc	=	0x0015
                           000016   100 __pbph	=	0x0016
                           000017   101 __pbpl	=	0x0017
                           000018   102 __gpcc	=	0x0018
                           000019   103 __gpcs	=	0x0019
                           00001A   104 __bgtr	=	0x001a
                           00001B   105 __misclvr	=	0x001b
                           00001C   106 __tm2c	=	0x001c
                           00001D   107 __tm2ct	=	0x001d
                           00001E   108 __tm2s	=	0x001e
                           00001F   109 __tm2b	=	0x001f
                           000020   110 __ts	=	0x0020
                           000021   111 __tcc	=	0x0021
                           000022   112 __tke2	=	0x0022
                           000024   113 __tke1	=	0x0024
                           000026   114 __tps	=	0x0026
                           000028   115 __tps2	=	0x0028
                           00002B   116 __tkch	=	0x002b
                           00002C   117 __tkcl	=	0x002c
                           00002D   118 __lvdc	=	0x002d
                           000032   119 __tm3c	=	0x0032
                           000033   120 __tm3ct	=	0x0033
                           000034   121 __tm3s	=	0x0034
                           000035   122 __tm3b	=	0x0035
                           000039   123 __ilrcr	=	0x0039
                           00003A   124 __rop	=	0x003a
      000000                        125 __t16c::
      000000                        126 	.ds 2
                                    127 ;--------------------------------------------------------
                                    128 ; ram data
                                    129 ;--------------------------------------------------------
                                    130 	.area DATA
      000002                        131 _leds::
      000002                        132 	.ds 10
      00000C                        133 _rnd_regs::
      00000C                        134 	.ds 4
      000010                        135 _lfsr_init_sloc9_1_0:
      000010                        136 	.ds 1
      000011                        137 _flash_led_PARM_1:
      000011                        138 	.ds 1
      000012                        139 _flash_led_sloc12_1_0:
      000012                        140 	.ds 1
      000013                        141 _load_next_delay_target_PARM_1:
      000013                        142 	.ds 1
      000014                        143 _load_next_delay_target_sloc13_1_0:
      000014                        144 	.ds 1
      000015                        145 _load_next_delay_target_sloc14_1_0:
      000015                        146 	.ds 1
      000016                        147 _load_next_delay_target_sloc15_1_0:
      000016                        148 	.ds 1
      000017                        149 _load_next_delay_target_sloc16_1_0:
      000017                        150 	.ds 1
      000018                        151 _handle_tick_sloc17_1_0:
      000018                        152 	.ds 1
      000019                        153 _handle_tick_sloc18_1_0:
      000019                        154 	.ds 1
      00001A                        155 _handle_tick_sloc19_1_0:
      00001A                        156 	.ds 1
      00001B                        157 _handle_tick_sloc20_1_0:
      00001B                        158 	.ds 1
      00001C                        159 _main_sloc21_1_0:
      00001C                        160 	.ds 2
                                    161 ;--------------------------------------------------------
                                    162 ; overlayable items in ram
                                    163 ;--------------------------------------------------------
                                    164 	.area	OSEG (OVR,DATA)
      00001E                        165 _get_initial_psudo_rnd_sloc0_1_0:
      00001E                        166 	.ds 1
      00001F                        167 _get_initial_psudo_rnd_sloc1_1_0:
      00001F                        168 	.ds 1
      000020                        169 _get_initial_psudo_rnd_sloc2_1_0:
      000020                        170 	.ds 1
                                    171 	.area	OSEG (OVR,DATA)
      00001E                        172 _lfsr_shift_PARM_1:
      00001E                        173 	.ds 1
      00001F                        174 _lfsr_shift_sloc3_1_0:
      00001F                        175 	.ds 1
      000020                        176 _lfsr_shift_sloc4_1_0:
      000020                        177 	.ds 1
      000021                        178 _lfsr_shift_sloc5_1_0:
      000021                        179 	.ds 1
      000022                        180 _lfsr_shift_sloc6_1_0:
      000022                        181 	.ds 1
      000023                        182 _lfsr_shift_sloc7_1_0:
      000023                        183 	.ds 1
      000024                        184 _lfsr_shift_sloc8_1_0:
      000024                        185 	.ds 1
                                    186 	.area	OSEG (OVR,DATA)
      00001E                        187 _toggle_led_PARM_1:
      00001E                        188 	.ds 1
      00001F                        189 _toggle_led_sloc10_1_0:
      00001F                        190 	.ds 1
      000020                        191 _toggle_led_sloc11_1_0:
      000020                        192 	.ds 1
                                    193 ;--------------------------------------------------------
                                    194 ; Stack segment in internal ram
                                    195 ;--------------------------------------------------------
                                    196 	.area SSEG
      000025                        197 __start__stack:
      000025                        198 	.ds	1
                                    199 
                                    200 ;--------------------------------------------------------
                                    201 ; absolute external ram data
                                    202 ;--------------------------------------------------------
                                    203 	.area DABS (ABS)
                                    204 ;--------------------------------------------------------
                                    205 ; interrupt vector
                                    206 ;--------------------------------------------------------
                                    207 	.area HOME
      000022                        208 __interrupt_vect:
                                    209 	.area	HEADER (ABS)
      000020                        210 	.org	 0x0020
      000020 7B 00                  211 	reti
                                    212 ;--------------------------------------------------------
                                    213 ; global & static initialisations
                                    214 ;--------------------------------------------------------
                                    215 	.area HOME
                                    216 	.area GSINIT
                                    217 	.area GSFINAL
                                    218 	.area GSINIT
                                    219 	.area	PREG (ABS)
      000000                        220 	.org 0x00
      000000                        221 p::
      000000                        222 	.ds 2
                                    223 	.area	HEADER (ABS)
      000000                        224 	.org 0x0000
      000000 00 00                  225 	nop
      000002 01 13                  226 	clear	p+1
      000004 1E 2F                  227 	mov	a, #s_OSEG
      000006 08 28                  228 	add	a, #l_OSEG + 1
      000008 FE 2C                  229 	and	a, #0xfe
      00000A 82 01                  230 	mov.io	sp, a
      00000C 70 39                  231 	call	___sdcc_external_startup
      00000E 00 2B                  232 	cneqsn	a, #0x00
      000010 12 30                  233 	goto	__sdcc_init_data
      000012 11 30                  234 	goto	__sdcc_program_startup
                                    235 	.area GSINIT
      000024                        236 __sdcc_init_data:
      000024 02 2F                  237 	mov	a, #s_DATA
      000026 80 0B                  238 	mov	p, a
      000028 19 30                  239 	goto	00002$
      00002A                        240 00001$:
      00002A 00 2F                  241 	mov	a, #0x00
      00002C 80 03                  242 	idxm	p, a
      00002E 00 12                  243 	inc	p
      000030 02 2F                  244 	mov	a, #s_DATA
      000032                        245 00002$:
      000032 1C 28                  246 	add	a, #l_DATA
      000034 00 17                  247 	ceqsn	a, p
      000036 15 30                  248 	goto	00001$
                                    249 ;	main.c: 33: LED_REG leds[] = {
      000038 04 2F                  250 	mov	a, #0x04
      00003A 82 0B                  251 	mov	_leds+0, a
      00003C 05 2F                  252 	mov	a, #0x05
      00003E 87 0B                  253 	mov	_leds+5, a
      000040 03 13                  254 	clear	_leds+1
      000042 08 13                  255 	clear	_leds+6
      000044 BB 2F                  256 	mov	a, #0xbb
      000046 84 0B                  257 	mov	_leds+2, a
      000048 AA 2F                  258 	mov	a, #0xaa
      00004A 89 0B                  259 	mov	_leds+7, a
      00004C 06 13                  260 	clear	_leds+4
      00004E 0B 13                  261 	clear	_leds+9
      000050 01 2F                  262 	mov	a, #0x01
      000052 85 0B                  263 	mov	_leds+3, a
      000054 01 2F                  264 	mov	a, #0x01
      000056 8A 0B                  265 	mov	_leds+8, a
                                    266 	.area GSFINAL
      000058 11 30                  267 	goto	__sdcc_program_startup
                                    268 ;--------------------------------------------------------
                                    269 ; Home
                                    270 ;--------------------------------------------------------
                                    271 	.area HOME
                                    272 	.area HOME
      000022                        273 __sdcc_program_startup:
      000022 5C 31                  274 	goto	_main
                                    275 ;	return from main will return to caller
                                    276 ;--------------------------------------------------------
                                    277 ; code
                                    278 ;--------------------------------------------------------
                                    279 	.area CODE
                                    280 ;	main.c: 49: void sys_init()
                                    281 ;	-----------------------------------------
                                    282 ;	 function sys_init
                                    283 ;	-----------------------------------------
      00005A                        284 _sys_init:
                                    285 ;	main.c: 51: CLKMD &= ~(CLKMD_ENABLE_WATCHDOG);
      00005A 43 1C                  286 	set0.io	__clkmd, #1
                                    287 ;	main.c: 52: CLKMD |= CLKMD_ENABLE_IHRC | CLKMD_IHRC_DIV2;
      00005C C3 01                  288 	mov.io	a, __clkmd
      00005E 30 2D                  289 	or	a, #0x30
      000060 83 01                  290 	mov.io	__clkmd, a
                                    291 ;	main.c: 53: PAC |= LED_SHIFT(LED_BIT_0) | LED_SHIFT(LED_BIT_1);
      000062 D1 01                  292 	mov.io	a, __pac
      000064 30 2D                  293 	or	a, #0x30
      000066 91 01                  294 	mov.io	__pac, a
                                    295 ;	main.c: 54: LED_OFF(leds[0].led);
      000068 82 0F                  296 	mov	a, _leds+0
      00006A 72 00                  297 	push	af
      00006C 01 2F                  298 	mov	a, #0x01
      00006E 80 0B                  299 	mov	p, a
      000070 73 00                  300 	pop	af
      000072                        301 00103$:
      000072 01 29                  302 	sub	a, #1
      000074 40 18                  303 	t0sn.io	f, c
      000076 3E 30                  304 	goto	00104$
      000078                        305 00105$:
      000078 80 15                  306 	sl	p
      00007A 39 30                  307 	goto	00103$
      00007C                        308 00104$:
      00007C D0 01                  309 	mov.io	a, __pa
      00007E 80 0E                  310 	or	a, p
      000080 90 01                  311 	mov.io	__pa, a
                                    312 ;	main.c: 55: LED_OFF(leds[1].led);
      000082 87 0F                  313 	mov	a, _leds+5
      000084 72 00                  314 	push	af
      000086 01 2F                  315 	mov	a, #0x01
      000088 80 0B                  316 	mov	p, a
      00008A 73 00                  317 	pop	af
      00008C                        318 00106$:
      00008C 01 29                  319 	sub	a, #1
      00008E 40 18                  320 	t0sn.io	f, c
      000090 4B 30                  321 	goto	00107$
      000092                        322 00108$:
      000092 80 15                  323 	sl	p
      000094 46 30                  324 	goto	00106$
      000096                        325 00107$:
      000096 D0 01                  326 	mov.io	a, __pa
      000098 80 0E                  327 	or	a, p
      00009A 90 01                  328 	mov.io	__pa, a
                                    329 ;	main.c: 56: }
      00009C 7A 00                  330 	ret
                                    331 ;	main.c: 61: uint8_t get_initial_psudo_rnd()
                                    332 ;	-----------------------------------------
                                    333 ;	 function get_initial_psudo_rnd
                                    334 ;	-----------------------------------------
      00009E                        335 _get_initial_psudo_rnd:
                                    336 ;	main.c: 63: uint8_t res = rnd_regs[0];
      00009E 8C 0F                  337 	mov	a, _rnd_regs+0
      0000A0 9E 0B                  338 	mov	_get_initial_psudo_rnd_sloc0_1_0+0, a
                                    339 ;	main.c: 64: res ^= rnd_regs[1];
      0000A2 8D 0F                  340 	mov	a, _rnd_regs+1
      0000A4 1E 0F                  341 	xor	a, _get_initial_psudo_rnd_sloc0_1_0+0
      0000A6 9F 0B                  342 	mov	_get_initial_psudo_rnd_sloc1_1_0+0, a
                                    343 ;	main.c: 65: res ^= rnd_regs[2];
      0000A8 8E 0F                  344 	mov	a, _rnd_regs+2
      0000AA 1F 0F                  345 	xor	a, _get_initial_psudo_rnd_sloc1_1_0+0
      0000AC A0 0B                  346 	mov	_get_initial_psudo_rnd_sloc2_1_0+0, a
                                    347 ;	main.c: 66: res ^= rnd_regs[3];
      0000AE 8F 0F                  348 	mov	a, _rnd_regs+3
      0000B0 20 0F                  349 	xor	a, _get_initial_psudo_rnd_sloc2_1_0+0
                                    350 ;	main.c: 67: return res;
                                    351 ;	main.c: 68: }
      0000B2 7A 00                  352 	ret
                                    353 ;	main.c: 71: uint8_t lfsr_shift(uint8_t index)
                                    354 ;	-----------------------------------------
                                    355 ;	 function lfsr_shift
                                    356 ;	-----------------------------------------
      0000B4                        357 _lfsr_shift:
                                    358 ;	main.c: 73: uint8_t first_bit = 0x01 & leds[index].lfs_reg; 
      0000B4 9E 0F                  359 	mov	a, _lfsr_shift_PARM_1+0
      0000B6 6B 00                  360 	sl	a
      0000B8 6B 00                  361 	sl	a
      0000BA 1E 0C                  362 	add	a, _lfsr_shift_PARM_1+0
      0000BC 02 28                  363 	add	a, #(_leds + 0)
      0000BE 02 28                  364 	add	a, #0x02
      0000C0 9F 0B                  365 	mov	_lfsr_shift_sloc3_1_0+0, a
      0000C2 80 0B                  366 	mov	p, a
      0000C4 81 03                  367 	idxm	a, p
      0000C6 A0 0B                  368 	mov	_lfsr_shift_sloc4_1_0+0, a
      0000C8 01 2C                  369 	and	a, #0x01
      0000CA A1 0B                  370 	mov	_lfsr_shift_sloc5_1_0+0, a
                                    371 ;	main.c: 74: uint8_t next_bit = leds[index].lfs_reg & 0x01;
      0000CC 80 0B                  372 	mov	p, a
                                    373 ;	main.c: 75: next_bit ^= (leds[index].lfs_reg >> 4) & 0x01;
      0000CE A0 0F                  374 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000D0 6E 00                  375 	swap	a
      0000D2 0F 2C                  376 	and	a, #0x0f
      0000D4 01 2C                  377 	and	a, #0x01
      0000D6 00 0B                  378 	xor	p, a
                                    379 ;	main.c: 76: next_bit ^= (leds[index].lfs_reg >> 3) & 0x01;
      0000D8 A0 0F                  380 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000DA 6A 00                  381 	sr	a
      0000DC 6A 00                  382 	sr	a
      0000DE 6A 00                  383 	sr	a
      0000E0 01 2C                  384 	and	a, #0x01
      0000E2 00 0B                  385 	xor	p, a
                                    386 ;	main.c: 77: next_bit ^= (leds[index].lfs_reg >> 2) & 0x01;
      0000E4 A0 0F                  387 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000E6 6A 00                  388 	sr	a
      0000E8 6A 00                  389 	sr	a
      0000EA 01 2C                  390 	and	a, #0x01
      0000EC 00 0F                  391 	xor	a, p
      0000EE A2 0B                  392 	mov	_lfsr_shift_sloc6_1_0+0, a
                                    393 ;	main.c: 79: leds[index].lfs_reg >>= 1;
      0000F0 A0 0F                  394 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000F2 A3 0B                  395 	mov	_lfsr_shift_sloc7_1_0+0, a
      0000F4 23 15                  396 	sr	_lfsr_shift_sloc7_1_0+0
      0000F6 9F 0F                  397 	mov	a, _lfsr_shift_sloc3_1_0+0
      0000F8 80 0B                  398 	mov	p, a
      0000FA A3 0F                  399 	mov	a, _lfsr_shift_sloc7_1_0+0
      0000FC 80 03                  400 	idxm	p, a
                                    401 ;	main.c: 80: leds[index].lfs_reg |= (next_bit << 7) & 0x80;
      0000FE A2 0F                  402 	mov	a, _lfsr_shift_sloc6_1_0+0
      000100 6A 00                  403 	sr	a
      000102 00 2F                  404 	mov	a, #0x00
      000104 6C 00                  405 	src	a
      000106 80 2C                  406 	and	a, #0x80
      000108 A3 0E                  407 	or	a, _lfsr_shift_sloc7_1_0+0
      00010A A4 0B                  408 	mov	_lfsr_shift_sloc8_1_0+0, a
      00010C 9F 0F                  409 	mov	a, _lfsr_shift_sloc3_1_0+0
      00010E 80 0B                  410 	mov	p, a
      000110 A4 0F                  411 	mov	a, _lfsr_shift_sloc8_1_0+0
      000112 80 03                  412 	idxm	p, a
                                    413 ;	main.c: 82: rnd_regs[index] = leds[index].lfs_reg;
      000114 0C 2F                  414 	mov	a, #(_rnd_regs + 0)
      000116 1E 0C                  415 	add	a, _lfsr_shift_PARM_1+0
      000118 80 0B                  416 	mov	p, a
      00011A A4 0F                  417 	mov	a, _lfsr_shift_sloc8_1_0+0
      00011C 80 03                  418 	idxm	p, a
                                    419 ;	main.c: 83: rnd_regs[index+2] = leds[index].lfs_reg;
      00011E 9E 0F                  420 	mov	a, _lfsr_shift_PARM_1+0
      000120 02 28                  421 	add	a, #0x02
      000122 0C 28                  422 	add	a, #(_rnd_regs + 0)
      000124 72 00                  423 	push	af
      000126 9F 0F                  424 	mov	a, _lfsr_shift_sloc3_1_0+0
      000128 80 0B                  425 	mov	p, a
      00012A 81 03                  426 	idxm	a, p
      00012C 80 0B                  427 	mov	p, a
      00012E 73 00                  428 	pop	af
      000130 80 13                  429 	xch	a, p
      000132 80 03                  430 	idxm	p, a
                                    431 ;	main.c: 84: return first_bit;
      000134 A1 0F                  432 	mov	a, _lfsr_shift_sloc5_1_0+0
                                    433 ;	main.c: 85: }
      000136 7A 00                  434 	ret
                                    435 ;	main.c: 88: void lfsr_init()
                                    436 ;	-----------------------------------------
                                    437 ;	 function lfsr_init
                                    438 ;	-----------------------------------------
      000138                        439 _lfsr_init:
                                    440 ;	main.c: 90: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
      000138 10 13                  441 	clear	_lfsr_init_sloc9_1_0+0
      00013A                        442 00103$:
      00013A 4F 38                  443 	call	_get_initial_psudo_rnd
      00013C 80 0B                  444 	mov	p, a
      00013E 90 0F                  445 	mov	a, _lfsr_init_sloc9_1_0+0
      000140 80 0C                  446 	sub	a, p
      000142 40 1A                  447 	t1sn.io	f, c
      000144 AA 30                  448 	goto	00105$
      000146                        449 00120$:
                                    450 ;	main.c: 92: lfsr_shift(0);
      000146 1E 13                  451 	clear	_lfsr_shift_PARM_1+0
      000148 5A 38                  452 	call	_lfsr_shift
                                    453 ;	main.c: 93: lfsr_shift(1);
      00014A 01 2F                  454 	mov	a, #0x01
      00014C 9E 0B                  455 	mov	_lfsr_shift_PARM_1+0, a
      00014E 5A 38                  456 	call	_lfsr_shift
                                    457 ;	main.c: 90: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
      000150 10 12                  458 	inc	_lfsr_init_sloc9_1_0+0
      000152 9D 30                  459 	goto	00103$
      000154                        460 00105$:
                                    461 ;	main.c: 96: }
      000154 7A 00                  462 	ret
                                    463 ;	main.c: 98: void toggle_led(uint8_t index)
                                    464 ;	-----------------------------------------
                                    465 ;	 function toggle_led
                                    466 ;	-----------------------------------------
      000156                        467 _toggle_led:
                                    468 ;	main.c: 100: if (leds[index].on)
      000156 9E 0F                  469 	mov	a, _toggle_led_PARM_1+0
      000158 6B 00                  470 	sl	a
      00015A 6B 00                  471 	sl	a
      00015C 1E 0C                  472 	add	a, _toggle_led_PARM_1+0
      00015E 02 28                  473 	add	a, #(_leds + 0)
      000160 9F 0B                  474 	mov	_toggle_led_sloc10_1_0+0, a
      000162 01 28                  475 	add	a, #0x01
      000164 A0 0B                  476 	mov	_toggle_led_sloc11_1_0+0, a
      000166 80 0B                  477 	mov	p, a
      000168 81 03                  478 	idxm	a, p
      00016A 00 2B                  479 	cneqsn	a, #0x00
      00016C CB 30                  480 	goto	00102$
      00016E                        481 00112$:
                                    482 ;	main.c: 102: LED_OFF(leds[index].led);
      00016E 9F 0F                  483 	mov	a, _toggle_led_sloc10_1_0+0
      000170 80 0B                  484 	mov	p, a
      000172 81 03                  485 	idxm	a, p
      000174 72 00                  486 	push	af
      000176 01 2F                  487 	mov	a, #0x01
      000178 80 0B                  488 	mov	p, a
      00017A 73 00                  489 	pop	af
      00017C                        490 00113$:
      00017C 01 29                  491 	sub	a, #1
      00017E 40 18                  492 	t0sn.io	f, c
      000180 C3 30                  493 	goto	00114$
      000182                        494 00115$:
      000182 80 15                  495 	sl	p
      000184 BE 30                  496 	goto	00113$
      000186                        497 00114$:
      000186 D0 01                  498 	mov.io	a, __pa
      000188 80 0E                  499 	or	a, p
      00018A 90 01                  500 	mov.io	__pa, a
                                    501 ;	main.c: 103: leds[index].on = 0;
      00018C A0 0F                  502 	mov	a, _toggle_led_sloc11_1_0+0
      00018E 80 0B                  503 	mov	p, a
      000190 00 2F                  504 	mov	a, #0x00
      000192 80 03                  505 	idxm	p, a
      000194 DF 30                  506 	goto	00104$
      000196                        507 00102$:
                                    508 ;	main.c: 107: LED_ON(leds[index].led);
      000196 9F 0F                  509 	mov	a, _toggle_led_sloc10_1_0+0
      000198 80 0B                  510 	mov	p, a
      00019A 81 03                  511 	idxm	a, p
      00019C 72 00                  512 	push	af
      00019E 01 2F                  513 	mov	a, #0x01
      0001A0 80 0B                  514 	mov	p, a
      0001A2 73 00                  515 	pop	af
      0001A4                        516 00116$:
      0001A4 01 29                  517 	sub	a, #1
      0001A6 40 18                  518 	t0sn.io	f, c
      0001A8 D7 30                  519 	goto	00117$
      0001AA                        520 00118$:
      0001AA 80 15                  521 	sl	p
      0001AC D2 30                  522 	goto	00116$
      0001AE                        523 00117$:
      0001AE 00 14                  524 	not	p
      0001B0 D0 01                  525 	mov.io	a, __pa
      0001B2 00 0E                  526 	and	a, p
      0001B4 90 01                  527 	mov.io	__pa, a
                                    528 ;	main.c: 108: leds[index].on = 1;
      0001B6 A0 0F                  529 	mov	a, _toggle_led_sloc11_1_0+0
      0001B8 80 0B                  530 	mov	p, a
      0001BA 01 2F                  531 	mov	a, #0x01
      0001BC 80 03                  532 	idxm	p, a
      0001BE                        533 00104$:
                                    534 ;	main.c: 110: }
      0001BE 7A 00                  535 	ret
                                    536 ;	main.c: 112: void flash_led(uint8_t index)
                                    537 ;	-----------------------------------------
                                    538 ;	 function flash_led
                                    539 ;	-----------------------------------------
      0001C0                        540 _flash_led:
                                    541 ;	main.c: 118: for (uint8_t i = 0; i < 7; i++)
      0001C0 12 13                  542 	clear	_flash_led_sloc12_1_0+0
      0001C2                        543 00106$:
      0001C2 92 0F                  544 	mov	a, _flash_led_sloc12_1_0+0
      0001C4 07 29                  545 	sub	a, #0x07
      0001C6 40 1A                  546 	t1sn.io	f, c
      0001C8 F1 30                  547 	goto	00108$
      0001CA                        548 00136$:
                                    549 ;	main.c: 120: toggle_led(index);
      0001CA 91 0F                  550 	mov	a, _flash_led_PARM_1+0
      0001CC 9E 0B                  551 	mov	_toggle_led_PARM_1+0, a
      0001CE AB 38                  552 	call	_toggle_led
                                    553 ;	main.c: 121: while (cnt++ < SHORT_DELAY) {}
      0001D0 00 13                  554 	clear	p
      0001D2                        555 00101$:
      0001D2 80 0F                  556 	mov	a, p
      0001D4 00 12                  557 	inc	p
      0001D6 D8 2A                  558 	ceqsn	a, #0xd8
      0001D8 00 00                  559 	nop
      0001DA                        560 00137$:
      0001DA 40 18                  561 	t0sn.io	f, c
      0001DC E9 30                  562 	goto	00101$
      0001DE                        563 00138$:
                                    564 ;	main.c: 118: for (uint8_t i = 0; i < 7; i++)
      0001DE 12 12                  565 	inc	_flash_led_sloc12_1_0+0
      0001E0 E1 30                  566 	goto	00106$
      0001E2                        567 00108$:
                                    568 ;	main.c: 126: }
      0001E2 7A 00                  569 	ret
                                    570 ;	main.c: 128: void load_next_delay_target(uint8_t index)
                                    571 ;	-----------------------------------------
                                    572 ;	 function load_next_delay_target
                                    573 ;	-----------------------------------------
      0001E4                        574 _load_next_delay_target:
                                    575 ;	main.c: 130: leds[index].delay_target = (lfsr_shift(index) << 2) | (lfsr_shift(index) << 1) | lfsr_shift(index);
      0001E4 93 0F                  576 	mov	a, _load_next_delay_target_PARM_1+0
      0001E6 6B 00                  577 	sl	a
      0001E8 6B 00                  578 	sl	a
      0001EA 13 0C                  579 	add	a, _load_next_delay_target_PARM_1+0
      0001EC 02 28                  580 	add	a, #(_leds + 0)
      0001EE 03 28                  581 	add	a, #0x03
      0001F0 94 0B                  582 	mov	_load_next_delay_target_sloc13_1_0+0, a
      0001F2 93 0F                  583 	mov	a, _load_next_delay_target_PARM_1+0
      0001F4 9E 0B                  584 	mov	_lfsr_shift_PARM_1+0, a
      0001F6 5A 38                  585 	call	_lfsr_shift
      0001F8 95 0B                  586 	mov	_load_next_delay_target_sloc14_1_0+0, a
      0001FA 95 15                  587 	sl	_load_next_delay_target_sloc14_1_0+0
      0001FC 95 15                  588 	sl	_load_next_delay_target_sloc14_1_0+0
      0001FE 93 0F                  589 	mov	a, _load_next_delay_target_PARM_1+0
      000200 9E 0B                  590 	mov	_lfsr_shift_PARM_1+0, a
      000202 5A 38                  591 	call	_lfsr_shift
      000204 6B 00                  592 	sl	a
      000206 95 0E                  593 	or	a, _load_next_delay_target_sloc14_1_0+0
      000208 96 0B                  594 	mov	_load_next_delay_target_sloc15_1_0+0, a
      00020A 93 0F                  595 	mov	a, _load_next_delay_target_PARM_1+0
      00020C 9E 0B                  596 	mov	_lfsr_shift_PARM_1+0, a
      00020E 5A 38                  597 	call	_lfsr_shift
      000210 96 0E                  598 	or	a, _load_next_delay_target_sloc15_1_0+0
      000212 97 0B                  599 	mov	_load_next_delay_target_sloc16_1_0+0, a
      000214 94 0F                  600 	mov	a, _load_next_delay_target_sloc13_1_0+0
      000216 80 0B                  601 	mov	p, a
      000218 97 0F                  602 	mov	a, _load_next_delay_target_sloc16_1_0+0
      00021A 80 03                  603 	idxm	p, a
                                    604 ;	main.c: 131: leds[index].delay_target += 2;
      00021C 97 0F                  605 	mov	a, _load_next_delay_target_sloc16_1_0+0
      00021E 02 28                  606 	add	a, #0x02
      000220 80 0B                  607 	mov	p, a
      000222 94 0F                  608 	mov	a, _load_next_delay_target_sloc13_1_0+0
      000224 80 13                  609 	xch	a, p
      000226 80 03                  610 	idxm	p, a
                                    611 ;	main.c: 133: }
      000228 7A 00                  612 	ret
                                    613 ;	main.c: 135: void handle_tick()
                                    614 ;	-----------------------------------------
                                    615 ;	 function handle_tick
                                    616 ;	-----------------------------------------
      00022A                        617 _handle_tick:
                                    618 ;	main.c: 137: for (uint8_t i = 0; i < 2; i++)
      00022A 18 13                  619 	clear	_handle_tick_sloc17_1_0+0
      00022C                        620 00108$:
      00022C 98 0F                  621 	mov	a, _handle_tick_sloc17_1_0+0
      00022E 02 29                  622 	sub	a, #0x02
      000230 40 1A                  623 	t1sn.io	f, c
      000232 5B 31                  624 	goto	00110$
      000234                        625 00137$:
                                    626 ;	main.c: 139: leds[i].delay_count++;
      000234 98 0F                  627 	mov	a, _handle_tick_sloc17_1_0+0
      000236 6B 00                  628 	sl	a
      000238 6B 00                  629 	sl	a
      00023A 18 0C                  630 	add	a, _handle_tick_sloc17_1_0+0
      00023C 02 28                  631 	add	a, #(_leds + 0)
      00023E 99 0B                  632 	mov	_handle_tick_sloc18_1_0+0, a
      000240 04 28                  633 	add	a, #0x04
      000242 80 0B                  634 	mov	p, a
      000244 81 03                  635 	idxm	a, p
      000246 01 28                  636 	add	a, #0x01
      000248 9A 0B                  637 	mov	_handle_tick_sloc19_1_0+0, a
      00024A 80 03                  638 	idxm	p, a
                                    639 ;	main.c: 140: if (leds[i].delay_count >= leds[i].delay_target) 
      00024C 99 0F                  640 	mov	a, _handle_tick_sloc18_1_0+0
      00024E 03 28                  641 	add	a, #0x03
      000250 80 0B                  642 	mov	p, a
      000252 81 03                  643 	idxm	a, p
      000254 80 0B                  644 	mov	p, a
      000256 9A 0F                  645 	mov	a, _handle_tick_sloc19_1_0+0
      000258 80 0C                  646 	sub	a, p
      00025A 40 18                  647 	t0sn.io	f, c
      00025C 59 31                  648 	goto	00109$
      00025E                        649 00138$:
                                    650 ;	main.c: 142: if (leds[i].on)
      00025E 99 0F                  651 	mov	a, _handle_tick_sloc18_1_0+0
      000260 01 28                  652 	add	a, #0x01
      000262 9B 0B                  653 	mov	_handle_tick_sloc20_1_0+0, a
      000264 80 0B                  654 	mov	p, a
      000266 81 03                  655 	idxm	a, p
      000268 00 2B                  656 	cneqsn	a, #0x00
      00026A 4A 31                  657 	goto	00102$
      00026C                        658 00139$:
                                    659 ;	main.c: 144: LED_OFF(leds[i].led);
      00026C 99 0F                  660 	mov	a, _handle_tick_sloc18_1_0+0
      00026E 80 0B                  661 	mov	p, a
      000270 81 03                  662 	idxm	a, p
      000272 72 00                  663 	push	af
      000274 01 2F                  664 	mov	a, #0x01
      000276 80 0B                  665 	mov	p, a
      000278 73 00                  666 	pop	af
      00027A                        667 00140$:
      00027A 01 29                  668 	sub	a, #1
      00027C 40 18                  669 	t0sn.io	f, c
      00027E 42 31                  670 	goto	00141$
      000280                        671 00142$:
      000280 80 15                  672 	sl	p
      000282 3D 31                  673 	goto	00140$
      000284                        674 00141$:
      000284 D0 01                  675 	mov.io	a, __pa
      000286 80 0E                  676 	or	a, p
      000288 90 01                  677 	mov.io	__pa, a
                                    678 ;	main.c: 145: leds[i].on = 0;
      00028A 9B 0F                  679 	mov	a, _handle_tick_sloc20_1_0+0
      00028C 80 0B                  680 	mov	p, a
      00028E 00 2F                  681 	mov	a, #0x00
      000290 80 03                  682 	idxm	p, a
      000292 4D 31                  683 	goto	00103$
      000294                        684 00102$:
                                    685 ;	main.c: 149: flash_led(i);
      000294 98 0F                  686 	mov	a, _handle_tick_sloc17_1_0+0
      000296 91 0B                  687 	mov	_flash_led_PARM_1+0, a
      000298 E0 38                  688 	call	_flash_led
      00029A                        689 00103$:
                                    690 ;	main.c: 152: load_next_delay_target(i);
      00029A 98 0F                  691 	mov	a, _handle_tick_sloc17_1_0+0
      00029C 93 0B                  692 	mov	_load_next_delay_target_PARM_1+0, a
      00029E F2 38                  693 	call	_load_next_delay_target
                                    694 ;	main.c: 153: leds[i].delay_count = 0;
      0002A0 98 0F                  695 	mov	a, _handle_tick_sloc17_1_0+0
      0002A2 6B 00                  696 	sl	a
      0002A4 6B 00                  697 	sl	a
      0002A6 18 0C                  698 	add	a, _handle_tick_sloc17_1_0+0
      0002A8 02 28                  699 	add	a, #(_leds + 0)
      0002AA 04 28                  700 	add	a, #0x04
      0002AC 80 0B                  701 	mov	p, a
      0002AE 00 2F                  702 	mov	a, #0x00
      0002B0 80 03                  703 	idxm	p, a
      0002B2                        704 00109$:
                                    705 ;	main.c: 137: for (uint8_t i = 0; i < 2; i++)
      0002B2 18 12                  706 	inc	_handle_tick_sloc17_1_0+0
      0002B4 16 31                  707 	goto	00108$
      0002B6                        708 00110$:
                                    709 ;	main.c: 156: }
      0002B6 7A 00                  710 	ret
                                    711 ;	main.c: 158: void main(void) {
                                    712 ;	-----------------------------------------
                                    713 ;	 function main
                                    714 ;	-----------------------------------------
      0002B8                        715 _main:
                                    716 ;	main.c: 160: uint16_t cnt = 0;
      0002B8 1C 13                  717 	clear	_main_sloc21_1_0+0
      0002BA 1D 13                  718 	clear	_main_sloc21_1_0+1
                                    719 ;	main.c: 161: sys_init();
      0002BC 2D 38                  720 	call	_sys_init
                                    721 ;	main.c: 162: lfsr_init();
      0002BE 9C 38                  722 	call	_lfsr_init
                                    723 ;	main.c: 168: while (cnt++ < DELAY) {}
      0002C0                        724 00101$:
      0002C0 9D 0F                  725 	mov	a, _main_sloc21_1_0+1
      0002C2 80 0B                  726 	mov	p, a
      0002C4 9C 0F                  727 	mov	a, _main_sloc21_1_0+0
      0002C6 1C 12                  728 	inc	_main_sloc21_1_0+0
      0002C8 1D 10                  729 	addc	_main_sloc21_1_0+1
      0002CA 3A 29                  730 	sub	a, #0x3a
      0002CC 0A 2F                  731 	mov	a, #0x0a
      0002CE 80 13                  732 	xch	a, p
      0002D0 80 0D                  733 	subc	a, p
      0002D2 40 18                  734 	t0sn.io	f, c
      0002D4 60 31                  735 	goto	00101$
      0002D6                        736 00121$:
                                    737 ;	main.c: 169: cnt = 0;        
      0002D6 1C 13                  738 	clear	_main_sloc21_1_0+0
      0002D8 1D 13                  739 	clear	_main_sloc21_1_0+1
                                    740 ;	main.c: 170: handle_tick();
      0002DA 15 39                  741 	call	_handle_tick
      0002DC 60 31                  742 	goto	00101$
                                    743 ;	main.c: 173: }
      0002DE 7A 00                  744 	ret
                                    745 	.area CODE
                                    746 	.area CONST
                                    747 	.area CABS (ABS)
