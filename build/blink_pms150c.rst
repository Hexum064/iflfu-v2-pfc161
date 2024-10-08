                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mpdk13
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
                                     28 	.globl __ilrcr
                                     29 	.globl __gpcs
                                     30 	.globl __tm2ct
                                     31 	.globl __tm2c
                                     32 	.globl __misc
                                     33 	.globl __gpcc
                                     34 	.globl __bgtr
                                     35 	.globl __tm2s
                                     36 	.globl __paph
                                     37 	.globl __pac
                                     38 	.globl __pa
                                     39 	.globl __padier
                                     40 	.globl __integs
                                     41 	.globl __ihrcr
                                     42 	.globl __eoscr
                                     43 	.globl __tm2b
                                     44 	.globl __t16m
                                     45 	.globl __intrq
                                     46 	.globl __inten
                                     47 	.globl __clkmd
                                     48 	.globl __sp
                                     49 	.globl __flag
                                     50 	.globl _load_next_delay_target_PARM_1
                                     51 	.globl _flash_led_PARM_1
                                     52 	.globl _rnd_regs
                                     53 	.globl _leds
                                     54 ;--------------------------------------------------------
                                     55 ; special function registers
                                     56 ;--------------------------------------------------------
                                     57 	.area RSEG (ABS)
      000000                         58 	.org 0x0000
                           000000    59 __flag	=	0x0000
                           000002    60 __sp	=	0x0002
                           000003    61 __clkmd	=	0x0003
                           000004    62 __inten	=	0x0004
                           000005    63 __intrq	=	0x0005
                           000006    64 __t16m	=	0x0006
                           000009    65 __tm2b	=	0x0009
                           00000A    66 __eoscr	=	0x000a
                           00000B    67 __ihrcr	=	0x000b
                           00000C    68 __integs	=	0x000c
                           00000D    69 __padier	=	0x000d
                           000010    70 __pa	=	0x0010
                           000011    71 __pac	=	0x0011
                           000012    72 __paph	=	0x0012
                           000017    73 __tm2s	=	0x0017
                           000019    74 __bgtr	=	0x0019
                           00001A    75 __gpcc	=	0x001a
                           00001B    76 __misc	=	0x001b
                           00001C    77 __tm2c	=	0x001c
                           00001D    78 __tm2ct	=	0x001d
                           00001E    79 __gpcs	=	0x001e
                           00001F    80 __ilrcr	=	0x001f
      000000                         81 __t16c::
      000000                         82 	.ds 2
                                     83 ;--------------------------------------------------------
                                     84 ; ram data
                                     85 ;--------------------------------------------------------
                                     86 	.area DATA
      000002                         87 _leds::
      000002                         88 	.ds 10
      00000C                         89 _rnd_regs::
      00000C                         90 	.ds 4
      000010                         91 _lfsr_init_sloc9_1_0:
      000010                         92 	.ds 1
      000011                         93 _flash_led_PARM_1:
      000011                         94 	.ds 1
      000012                         95 _flash_led_sloc12_1_0:
      000012                         96 	.ds 1
      000013                         97 _load_next_delay_target_PARM_1:
      000013                         98 	.ds 1
      000014                         99 _load_next_delay_target_sloc13_1_0:
      000014                        100 	.ds 1
      000015                        101 _load_next_delay_target_sloc14_1_0:
      000015                        102 	.ds 1
      000016                        103 _load_next_delay_target_sloc15_1_0:
      000016                        104 	.ds 1
      000017                        105 _load_next_delay_target_sloc16_1_0:
      000017                        106 	.ds 1
      000018                        107 _handle_tick_sloc17_1_0:
      000018                        108 	.ds 1
      000019                        109 _handle_tick_sloc18_1_0:
      000019                        110 	.ds 1
      00001A                        111 _handle_tick_sloc19_1_0:
      00001A                        112 	.ds 1
      00001B                        113 _handle_tick_sloc20_1_0:
      00001B                        114 	.ds 1
      00001C                        115 _main_sloc21_1_0:
      00001C                        116 	.ds 2
                                    117 ;--------------------------------------------------------
                                    118 ; overlayable items in ram
                                    119 ;--------------------------------------------------------
                                    120 	.area	OSEG (OVR,DATA)
      00001E                        121 _get_initial_psudo_rnd_sloc0_1_0:
      00001E                        122 	.ds 1
      00001F                        123 _get_initial_psudo_rnd_sloc1_1_0:
      00001F                        124 	.ds 1
      000020                        125 _get_initial_psudo_rnd_sloc2_1_0:
      000020                        126 	.ds 1
                                    127 	.area	OSEG (OVR,DATA)
      00001E                        128 _lfsr_shift_PARM_1:
      00001E                        129 	.ds 1
      00001F                        130 _lfsr_shift_sloc3_1_0:
      00001F                        131 	.ds 1
      000020                        132 _lfsr_shift_sloc4_1_0:
      000020                        133 	.ds 1
      000021                        134 _lfsr_shift_sloc5_1_0:
      000021                        135 	.ds 1
      000022                        136 _lfsr_shift_sloc6_1_0:
      000022                        137 	.ds 1
      000023                        138 _lfsr_shift_sloc7_1_0:
      000023                        139 	.ds 1
      000024                        140 _lfsr_shift_sloc8_1_0:
      000024                        141 	.ds 1
                                    142 	.area	OSEG (OVR,DATA)
      00001E                        143 _toggle_led_PARM_1:
      00001E                        144 	.ds 1
      00001F                        145 _toggle_led_sloc10_1_0:
      00001F                        146 	.ds 1
      000020                        147 _toggle_led_sloc11_1_0:
      000020                        148 	.ds 1
                                    149 ;--------------------------------------------------------
                                    150 ; Stack segment in internal ram
                                    151 ;--------------------------------------------------------
                                    152 	.area SSEG
      000025                        153 __start__stack:
      000025                        154 	.ds	1
                                    155 
                                    156 ;--------------------------------------------------------
                                    157 ; absolute external ram data
                                    158 ;--------------------------------------------------------
                                    159 	.area DABS (ABS)
                                    160 ;--------------------------------------------------------
                                    161 ; interrupt vector
                                    162 ;--------------------------------------------------------
                                    163 	.area HOME
      000022                        164 __interrupt_vect:
                                    165 	.area	HEADER (ABS)
      000020                        166 	.org	 0x0020
      000020 3B 00                  167 	reti
                                    168 ;--------------------------------------------------------
                                    169 ; global & static initialisations
                                    170 ;--------------------------------------------------------
                                    171 	.area HOME
                                    172 	.area GSINIT
                                    173 	.area GSFINAL
                                    174 	.area GSINIT
                                    175 	.area	PREG (ABS)
      000000                        176 	.org 0x00
      000000                        177 p::
      000000                        178 	.ds 2
                                    179 	.area	HEADER (ABS)
      000000                        180 	.org 0x0000
      000000 00 00                  181 	nop
      000002 81 09                  182 	clear	p+1
      000004 1E 17                  183 	mov	a, #s_OSEG
      000006 08 10                  184 	add	a, #l_OSEG + 1
      000008 FE 14                  185 	and	a, #0xfe
      00000A 82 00                  186 	mov.io	sp, a
      00000C 6F 1D                  187 	call	___sdcc_external_startup
      00000E 18 00                  188 	not	a
      000010 FF 12                  189 	ceqsn	a, #0xFF
      000012 11 18                  190 	goto	__sdcc_program_startup
      000014 12 18                  191 	goto	__sdcc_init_data
                                    192 	.area GSINIT
      000024                        193 __sdcc_init_data:
      000024 02 17                  194 	mov	a, #s_DATA
      000026 C0 05                  195 	mov	p, a
      000028 19 18                  196 	goto	00002$
      00002A                        197 00001$:
      00002A 00 17                  198 	mov	a, #0x00
      00002C E0 00                  199 	idxm	p, a
      00002E 00 09                  200 	inc	p
      000030 02 17                  201 	mov	a, #s_DATA
      000032                        202 00002$:
      000032 1C 10                  203 	add	a, #l_DATA
      000034 80 0B                  204 	ceqsn	a, p
      000036 15 18                  205 	goto	00001$
                                    206 ;	main.c: 33: LED_REG leds[] = {
      000038 04 17                  207 	mov	a, #0x04
      00003A C2 05                  208 	mov	_leds+0, a
      00003C 05 17                  209 	mov	a, #0x05
      00003E C7 05                  210 	mov	_leds+5, a
      000040 83 09                  211 	clear	_leds+1
      000042 88 09                  212 	clear	_leds+6
      000044 BB 17                  213 	mov	a, #0xbb
      000046 C4 05                  214 	mov	_leds+2, a
      000048 AA 17                  215 	mov	a, #0xaa
      00004A C9 05                  216 	mov	_leds+7, a
      00004C 86 09                  217 	clear	_leds+4
      00004E 8B 09                  218 	clear	_leds+9
      000050 01 17                  219 	mov	a, #0x01
      000052 C5 05                  220 	mov	_leds+3, a
      000054 01 17                  221 	mov	a, #0x01
      000056 CA 05                  222 	mov	_leds+8, a
                                    223 	.area GSFINAL
      000058 11 18                  224 	goto	__sdcc_program_startup
                                    225 ;--------------------------------------------------------
                                    226 ; Home
                                    227 ;--------------------------------------------------------
                                    228 	.area HOME
                                    229 	.area HOME
      000022                        230 __sdcc_program_startup:
      000022 5B 19                  231 	goto	_main
                                    232 ;	return from main will return to caller
                                    233 ;--------------------------------------------------------
                                    234 ; code
                                    235 ;--------------------------------------------------------
                                    236 	.area CODE
                                    237 ;	main.c: 49: void sys_init()
                                    238 ;	-----------------------------------------
                                    239 ;	 function sys_init
                                    240 ;	-----------------------------------------
      00005A                        241 _sys_init:
                                    242 ;	main.c: 51: CLKMD &= ~(CLKMD_ENABLE_WATCHDOG);
      00005A 23 0E                  243 	set0.io	__clkmd, #1
                                    244 ;	main.c: 52: PAC |= LED_SHIFT(LED_BIT_0) | LED_SHIFT(LED_BIT_1);
      00005C B1 00                  245 	mov.io	a, __pac
      00005E 30 15                  246 	or	a, #0x30
      000060 91 00                  247 	mov.io	__pac, a
                                    248 ;	main.c: 53: LED_OFF(leds[0].led);
      000062 C2 07                  249 	mov	a, _leds+0
      000064 32 00                  250 	push	af
      000066 01 17                  251 	mov	a, #0x01
      000068 C0 05                  252 	mov	p, a
      00006A 33 00                  253 	pop	af
      00006C                        254 00103$:
      00006C 01 11                  255 	sub	a, #1
      00006E 20 0C                  256 	t0sn.io	f, c
      000070 3B 18                  257 	goto	00104$
      000072                        258 00105$:
      000072 C0 0A                  259 	sl	p
      000074 36 18                  260 	goto	00103$
      000076                        261 00104$:
      000076 B0 00                  262 	mov.io	a, __pa
      000078 40 07                  263 	or	a, p
      00007A 90 00                  264 	mov.io	__pa, a
                                    265 ;	main.c: 54: LED_OFF(leds[1].led);
      00007C C7 07                  266 	mov	a, _leds+5
      00007E 32 00                  267 	push	af
      000080 01 17                  268 	mov	a, #0x01
      000082 C0 05                  269 	mov	p, a
      000084 33 00                  270 	pop	af
      000086                        271 00106$:
      000086 01 11                  272 	sub	a, #1
      000088 20 0C                  273 	t0sn.io	f, c
      00008A 48 18                  274 	goto	00107$
      00008C                        275 00108$:
      00008C C0 0A                  276 	sl	p
      00008E 43 18                  277 	goto	00106$
      000090                        278 00107$:
      000090 B0 00                  279 	mov.io	a, __pa
      000092 40 07                  280 	or	a, p
      000094 90 00                  281 	mov.io	__pa, a
                                    282 ;	main.c: 55: }
      000096 3A 00                  283 	ret
                                    284 ;	main.c: 60: uint8_t get_initial_psudo_rnd()
                                    285 ;	-----------------------------------------
                                    286 ;	 function get_initial_psudo_rnd
                                    287 ;	-----------------------------------------
      000098                        288 _get_initial_psudo_rnd:
                                    289 ;	main.c: 62: uint8_t res = rnd_regs[0];
      000098 CC 07                  290 	mov	a, _rnd_regs+0
      00009A DE 05                  291 	mov	_get_initial_psudo_rnd_sloc0_1_0+0, a
                                    292 ;	main.c: 63: res ^= rnd_regs[1];
      00009C CD 07                  293 	mov	a, _rnd_regs+1
      00009E 9E 07                  294 	xor	a, _get_initial_psudo_rnd_sloc0_1_0+0
      0000A0 DF 05                  295 	mov	_get_initial_psudo_rnd_sloc1_1_0+0, a
                                    296 ;	main.c: 64: res ^= rnd_regs[2];
      0000A2 CE 07                  297 	mov	a, _rnd_regs+2
      0000A4 9F 07                  298 	xor	a, _get_initial_psudo_rnd_sloc1_1_0+0
      0000A6 E0 05                  299 	mov	_get_initial_psudo_rnd_sloc2_1_0+0, a
                                    300 ;	main.c: 65: res ^= rnd_regs[3];
      0000A8 CF 07                  301 	mov	a, _rnd_regs+3
      0000AA A0 07                  302 	xor	a, _get_initial_psudo_rnd_sloc2_1_0+0
                                    303 ;	main.c: 66: return res;
                                    304 ;	main.c: 67: }
      0000AC 3A 00                  305 	ret
                                    306 ;	main.c: 70: uint8_t lfsr_shift(uint8_t index)
                                    307 ;	-----------------------------------------
                                    308 ;	 function lfsr_shift
                                    309 ;	-----------------------------------------
      0000AE                        310 _lfsr_shift:
                                    311 ;	main.c: 72: uint8_t first_bit = 0x01 & leds[index].lfs_reg; 
      0000AE DE 07                  312 	mov	a, _lfsr_shift_PARM_1+0
      0000B0 1B 00                  313 	sl	a
      0000B2 1B 00                  314 	sl	a
      0000B4 1E 06                  315 	add	a, _lfsr_shift_PARM_1+0
      0000B6 02 10                  316 	add	a, #(_leds + 0)
      0000B8 02 10                  317 	add	a, #0x02
      0000BA DF 05                  318 	mov	_lfsr_shift_sloc3_1_0+0, a
      0000BC C0 05                  319 	mov	p, a
      0000BE E1 00                  320 	idxm	a, p
      0000C0 E0 05                  321 	mov	_lfsr_shift_sloc4_1_0+0, a
      0000C2 01 14                  322 	and	a, #0x01
      0000C4 E1 05                  323 	mov	_lfsr_shift_sloc5_1_0+0, a
                                    324 ;	main.c: 73: uint8_t next_bit = leds[index].lfs_reg & 0x01;
      0000C6 C0 05                  325 	mov	p, a
                                    326 ;	main.c: 74: next_bit ^= (leds[index].lfs_reg >> 4) & 0x01;
      0000C8 E0 07                  327 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000CA 1E 00                  328 	swap	a
      0000CC 0F 14                  329 	and	a, #0x0f
      0000CE 01 14                  330 	and	a, #0x01
      0000D0 80 05                  331 	xor	p, a
                                    332 ;	main.c: 75: next_bit ^= (leds[index].lfs_reg >> 3) & 0x01;
      0000D2 E0 07                  333 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000D4 1A 00                  334 	sr	a
      0000D6 1A 00                  335 	sr	a
      0000D8 1A 00                  336 	sr	a
      0000DA 01 14                  337 	and	a, #0x01
      0000DC 80 05                  338 	xor	p, a
                                    339 ;	main.c: 76: next_bit ^= (leds[index].lfs_reg >> 2) & 0x01;
      0000DE E0 07                  340 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000E0 1A 00                  341 	sr	a
      0000E2 1A 00                  342 	sr	a
      0000E4 01 14                  343 	and	a, #0x01
      0000E6 80 07                  344 	xor	a, p
      0000E8 E2 05                  345 	mov	_lfsr_shift_sloc6_1_0+0, a
                                    346 ;	main.c: 78: leds[index].lfs_reg >>= 1;
      0000EA E0 07                  347 	mov	a, _lfsr_shift_sloc4_1_0+0
      0000EC E3 05                  348 	mov	_lfsr_shift_sloc7_1_0+0, a
      0000EE A3 0A                  349 	sr	_lfsr_shift_sloc7_1_0+0
      0000F0 DF 07                  350 	mov	a, _lfsr_shift_sloc3_1_0+0
      0000F2 C0 05                  351 	mov	p, a
      0000F4 E3 07                  352 	mov	a, _lfsr_shift_sloc7_1_0+0
      0000F6 E0 00                  353 	idxm	p, a
                                    354 ;	main.c: 79: leds[index].lfs_reg |= (next_bit << 7) & 0x80;
      0000F8 E2 07                  355 	mov	a, _lfsr_shift_sloc6_1_0+0
      0000FA 1A 00                  356 	sr	a
      0000FC 00 17                  357 	mov	a, #0x00
      0000FE 1C 00                  358 	src	a
      000100 80 14                  359 	and	a, #0x80
      000102 63 07                  360 	or	a, _lfsr_shift_sloc7_1_0+0
      000104 E4 05                  361 	mov	_lfsr_shift_sloc8_1_0+0, a
      000106 DF 07                  362 	mov	a, _lfsr_shift_sloc3_1_0+0
      000108 C0 05                  363 	mov	p, a
      00010A E4 07                  364 	mov	a, _lfsr_shift_sloc8_1_0+0
      00010C E0 00                  365 	idxm	p, a
                                    366 ;	main.c: 81: rnd_regs[index] = leds[index].lfs_reg;
      00010E 0C 17                  367 	mov	a, #(_rnd_regs + 0)
      000110 1E 06                  368 	add	a, _lfsr_shift_PARM_1+0
      000112 C0 05                  369 	mov	p, a
      000114 E4 07                  370 	mov	a, _lfsr_shift_sloc8_1_0+0
      000116 E0 00                  371 	idxm	p, a
                                    372 ;	main.c: 82: rnd_regs[index+2] = leds[index].lfs_reg;
      000118 DE 07                  373 	mov	a, _lfsr_shift_PARM_1+0
      00011A 02 10                  374 	add	a, #0x02
      00011C 0C 10                  375 	add	a, #(_rnd_regs + 0)
      00011E 32 00                  376 	push	af
      000120 DF 07                  377 	mov	a, _lfsr_shift_sloc3_1_0+0
      000122 C0 05                  378 	mov	p, a
      000124 E1 00                  379 	idxm	a, p
      000126 C0 05                  380 	mov	p, a
      000128 33 00                  381 	pop	af
      00012A C0 09                  382 	xch	a, p
      00012C E0 00                  383 	idxm	p, a
                                    384 ;	main.c: 83: return first_bit;
      00012E E1 07                  385 	mov	a, _lfsr_shift_sloc5_1_0+0
                                    386 ;	main.c: 84: }
      000130 3A 00                  387 	ret
                                    388 ;	main.c: 87: void lfsr_init()
                                    389 ;	-----------------------------------------
                                    390 ;	 function lfsr_init
                                    391 ;	-----------------------------------------
      000132                        392 _lfsr_init:
                                    393 ;	main.c: 89: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
      000132 90 09                  394 	clear	_lfsr_init_sloc9_1_0+0
      000134                        395 00103$:
      000134 4C 1C                  396 	call	_get_initial_psudo_rnd
      000136 C0 05                  397 	mov	p, a
      000138 D0 07                  398 	mov	a, _lfsr_init_sloc9_1_0+0
      00013A 40 06                  399 	sub	a, p
      00013C 20 0D                  400 	t1sn.io	f, c
      00013E A7 18                  401 	goto	00105$
      000140                        402 00120$:
                                    403 ;	main.c: 91: lfsr_shift(0);
      000140 9E 09                  404 	clear	_lfsr_shift_PARM_1+0
      000142 57 1C                  405 	call	_lfsr_shift
                                    406 ;	main.c: 92: lfsr_shift(1);
      000144 01 17                  407 	mov	a, #0x01
      000146 DE 05                  408 	mov	_lfsr_shift_PARM_1+0, a
      000148 57 1C                  409 	call	_lfsr_shift
                                    410 ;	main.c: 89: for (uint8_t i = 0; i < get_initial_psudo_rnd(); i++)
      00014A 10 09                  411 	inc	_lfsr_init_sloc9_1_0+0
      00014C 9A 18                  412 	goto	00103$
      00014E                        413 00105$:
                                    414 ;	main.c: 95: }
      00014E 3A 00                  415 	ret
                                    416 ;	main.c: 97: void toggle_led(uint8_t index)
                                    417 ;	-----------------------------------------
                                    418 ;	 function toggle_led
                                    419 ;	-----------------------------------------
      000150                        420 _toggle_led:
                                    421 ;	main.c: 99: if (leds[index].on)
      000150 DE 07                  422 	mov	a, _toggle_led_PARM_1+0
      000152 1B 00                  423 	sl	a
      000154 1B 00                  424 	sl	a
      000156 1E 06                  425 	add	a, _toggle_led_PARM_1+0
      000158 02 10                  426 	add	a, #(_leds + 0)
      00015A DF 05                  427 	mov	_toggle_led_sloc10_1_0+0, a
      00015C 01 10                  428 	add	a, #0x01
      00015E E0 05                  429 	mov	_toggle_led_sloc11_1_0+0, a
      000160 C0 05                  430 	mov	p, a
      000162 E1 00                  431 	idxm	a, p
      000164 00 12                  432 	ceqsn	a, #0x00
      000166 B5 18                  433 	goto	00112$
      000168                        434 00113$:
      000168 C9 18                  435 	goto	00102$
      00016A                        436 00112$:
                                    437 ;	main.c: 101: LED_OFF(leds[index].led);
      00016A DF 07                  438 	mov	a, _toggle_led_sloc10_1_0+0
      00016C C0 05                  439 	mov	p, a
      00016E E1 00                  440 	idxm	a, p
      000170 32 00                  441 	push	af
      000172 01 17                  442 	mov	a, #0x01
      000174 C0 05                  443 	mov	p, a
      000176 33 00                  444 	pop	af
      000178                        445 00114$:
      000178 01 11                  446 	sub	a, #1
      00017A 20 0C                  447 	t0sn.io	f, c
      00017C C1 18                  448 	goto	00115$
      00017E                        449 00116$:
      00017E C0 0A                  450 	sl	p
      000180 BC 18                  451 	goto	00114$
      000182                        452 00115$:
      000182 B0 00                  453 	mov.io	a, __pa
      000184 40 07                  454 	or	a, p
      000186 90 00                  455 	mov.io	__pa, a
                                    456 ;	main.c: 102: leds[index].on = 0;
      000188 E0 07                  457 	mov	a, _toggle_led_sloc11_1_0+0
      00018A C0 05                  458 	mov	p, a
      00018C 00 17                  459 	mov	a, #0x00
      00018E E0 00                  460 	idxm	p, a
      000190 DD 18                  461 	goto	00104$
      000192                        462 00102$:
                                    463 ;	main.c: 106: LED_ON(leds[index].led);
      000192 DF 07                  464 	mov	a, _toggle_led_sloc10_1_0+0
      000194 C0 05                  465 	mov	p, a
      000196 E1 00                  466 	idxm	a, p
      000198 32 00                  467 	push	af
      00019A 01 17                  468 	mov	a, #0x01
      00019C C0 05                  469 	mov	p, a
      00019E 33 00                  470 	pop	af
      0001A0                        471 00117$:
      0001A0 01 11                  472 	sub	a, #1
      0001A2 20 0C                  473 	t0sn.io	f, c
      0001A4 D5 18                  474 	goto	00118$
      0001A6                        475 00119$:
      0001A6 C0 0A                  476 	sl	p
      0001A8 D0 18                  477 	goto	00117$
      0001AA                        478 00118$:
      0001AA 00 0A                  479 	not	p
      0001AC B0 00                  480 	mov.io	a, __pa
      0001AE 00 07                  481 	and	a, p
      0001B0 90 00                  482 	mov.io	__pa, a
                                    483 ;	main.c: 107: leds[index].on = 1;
      0001B2 E0 07                  484 	mov	a, _toggle_led_sloc11_1_0+0
      0001B4 C0 05                  485 	mov	p, a
      0001B6 01 17                  486 	mov	a, #0x01
      0001B8 E0 00                  487 	idxm	p, a
      0001BA                        488 00104$:
                                    489 ;	main.c: 109: }
      0001BA 3A 00                  490 	ret
                                    491 ;	main.c: 111: void flash_led(uint8_t index)
                                    492 ;	-----------------------------------------
                                    493 ;	 function flash_led
                                    494 ;	-----------------------------------------
      0001BC                        495 _flash_led:
                                    496 ;	main.c: 117: for (uint8_t i = 0; i < 7; i++)
      0001BC 92 09                  497 	clear	_flash_led_sloc12_1_0+0
      0001BE                        498 00106$:
      0001BE D2 07                  499 	mov	a, _flash_led_sloc12_1_0+0
      0001C0 07 11                  500 	sub	a, #0x07
      0001C2 20 0D                  501 	t1sn.io	f, c
      0001C4 EF 18                  502 	goto	00108$
      0001C6                        503 00136$:
                                    504 ;	main.c: 119: toggle_led(index);
      0001C6 D1 07                  505 	mov	a, _flash_led_PARM_1+0
      0001C8 DE 05                  506 	mov	_toggle_led_PARM_1+0, a
      0001CA A8 1C                  507 	call	_toggle_led
                                    508 ;	main.c: 120: while (cnt++ < SHORT_DELAY) {}
      0001CC 80 09                  509 	clear	p
      0001CE                        510 00101$:
      0001CE C0 07                  511 	mov	a, p
      0001D0 00 09                  512 	inc	p
      0001D2 D8 12                  513 	ceqsn	a, #0xd8
      0001D4 00 00                  514 	nop
      0001D6                        515 00137$:
      0001D6 20 0C                  516 	t0sn.io	f, c
      0001D8 E7 18                  517 	goto	00101$
      0001DA                        518 00138$:
                                    519 ;	main.c: 117: for (uint8_t i = 0; i < 7; i++)
      0001DA 12 09                  520 	inc	_flash_led_sloc12_1_0+0
      0001DC DF 18                  521 	goto	00106$
      0001DE                        522 00108$:
                                    523 ;	main.c: 125: }
      0001DE 3A 00                  524 	ret
                                    525 ;	main.c: 127: void load_next_delay_target(uint8_t index)
                                    526 ;	-----------------------------------------
                                    527 ;	 function load_next_delay_target
                                    528 ;	-----------------------------------------
      0001E0                        529 _load_next_delay_target:
                                    530 ;	main.c: 129: leds[index].delay_target = (lfsr_shift(index) << 2) | (lfsr_shift(index) << 1) | lfsr_shift(index);
      0001E0 D3 07                  531 	mov	a, _load_next_delay_target_PARM_1+0
      0001E2 1B 00                  532 	sl	a
      0001E4 1B 00                  533 	sl	a
      0001E6 13 06                  534 	add	a, _load_next_delay_target_PARM_1+0
      0001E8 02 10                  535 	add	a, #(_leds + 0)
      0001EA 03 10                  536 	add	a, #0x03
      0001EC D4 05                  537 	mov	_load_next_delay_target_sloc13_1_0+0, a
      0001EE D3 07                  538 	mov	a, _load_next_delay_target_PARM_1+0
      0001F0 DE 05                  539 	mov	_lfsr_shift_PARM_1+0, a
      0001F2 57 1C                  540 	call	_lfsr_shift
      0001F4 D5 05                  541 	mov	_load_next_delay_target_sloc14_1_0+0, a
      0001F6 D5 0A                  542 	sl	_load_next_delay_target_sloc14_1_0+0
      0001F8 D5 0A                  543 	sl	_load_next_delay_target_sloc14_1_0+0
      0001FA D3 07                  544 	mov	a, _load_next_delay_target_PARM_1+0
      0001FC DE 05                  545 	mov	_lfsr_shift_PARM_1+0, a
      0001FE 57 1C                  546 	call	_lfsr_shift
      000200 1B 00                  547 	sl	a
      000202 55 07                  548 	or	a, _load_next_delay_target_sloc14_1_0+0
      000204 D6 05                  549 	mov	_load_next_delay_target_sloc15_1_0+0, a
      000206 D3 07                  550 	mov	a, _load_next_delay_target_PARM_1+0
      000208 DE 05                  551 	mov	_lfsr_shift_PARM_1+0, a
      00020A 57 1C                  552 	call	_lfsr_shift
      00020C 56 07                  553 	or	a, _load_next_delay_target_sloc15_1_0+0
      00020E D7 05                  554 	mov	_load_next_delay_target_sloc16_1_0+0, a
      000210 D4 07                  555 	mov	a, _load_next_delay_target_sloc13_1_0+0
      000212 C0 05                  556 	mov	p, a
      000214 D7 07                  557 	mov	a, _load_next_delay_target_sloc16_1_0+0
      000216 E0 00                  558 	idxm	p, a
                                    559 ;	main.c: 130: leds[index].delay_target += 2;
      000218 D7 07                  560 	mov	a, _load_next_delay_target_sloc16_1_0+0
      00021A 02 10                  561 	add	a, #0x02
      00021C C0 05                  562 	mov	p, a
      00021E D4 07                  563 	mov	a, _load_next_delay_target_sloc13_1_0+0
      000220 C0 09                  564 	xch	a, p
      000222 E0 00                  565 	idxm	p, a
                                    566 ;	main.c: 132: }
      000224 3A 00                  567 	ret
                                    568 ;	main.c: 134: void handle_tick()
                                    569 ;	-----------------------------------------
                                    570 ;	 function handle_tick
                                    571 ;	-----------------------------------------
      000226                        572 _handle_tick:
                                    573 ;	main.c: 136: for (uint8_t i = 0; i < 2; i++)
      000226 98 09                  574 	clear	_handle_tick_sloc17_1_0+0
      000228                        575 00108$:
      000228 D8 07                  576 	mov	a, _handle_tick_sloc17_1_0+0
      00022A 02 11                  577 	sub	a, #0x02
      00022C 20 0D                  578 	t1sn.io	f, c
      00022E 5A 19                  579 	goto	00110$
      000230                        580 00137$:
                                    581 ;	main.c: 138: leds[i].delay_count++;
      000230 D8 07                  582 	mov	a, _handle_tick_sloc17_1_0+0
      000232 1B 00                  583 	sl	a
      000234 1B 00                  584 	sl	a
      000236 18 06                  585 	add	a, _handle_tick_sloc17_1_0+0
      000238 02 10                  586 	add	a, #(_leds + 0)
      00023A D9 05                  587 	mov	_handle_tick_sloc18_1_0+0, a
      00023C 04 10                  588 	add	a, #0x04
      00023E C0 05                  589 	mov	p, a
      000240 E1 00                  590 	idxm	a, p
      000242 01 10                  591 	add	a, #0x01
      000244 DA 05                  592 	mov	_handle_tick_sloc19_1_0+0, a
      000246 E0 00                  593 	idxm	p, a
                                    594 ;	main.c: 139: if (leds[i].delay_count >= leds[i].delay_target) 
      000248 D9 07                  595 	mov	a, _handle_tick_sloc18_1_0+0
      00024A 03 10                  596 	add	a, #0x03
      00024C C0 05                  597 	mov	p, a
      00024E E1 00                  598 	idxm	a, p
      000250 C0 05                  599 	mov	p, a
      000252 DA 07                  600 	mov	a, _handle_tick_sloc19_1_0+0
      000254 40 06                  601 	sub	a, p
      000256 20 0C                  602 	t0sn.io	f, c
      000258 58 19                  603 	goto	00109$
      00025A                        604 00138$:
                                    605 ;	main.c: 141: if (leds[i].on)
      00025A D9 07                  606 	mov	a, _handle_tick_sloc18_1_0+0
      00025C 01 10                  607 	add	a, #0x01
      00025E DB 05                  608 	mov	_handle_tick_sloc20_1_0+0, a
      000260 C0 05                  609 	mov	p, a
      000262 E1 00                  610 	idxm	a, p
      000264 00 12                  611 	ceqsn	a, #0x00
      000266 35 19                  612 	goto	00139$
      000268                        613 00140$:
      000268 49 19                  614 	goto	00102$
      00026A                        615 00139$:
                                    616 ;	main.c: 143: LED_OFF(leds[i].led);
      00026A D9 07                  617 	mov	a, _handle_tick_sloc18_1_0+0
      00026C C0 05                  618 	mov	p, a
      00026E E1 00                  619 	idxm	a, p
      000270 32 00                  620 	push	af
      000272 01 17                  621 	mov	a, #0x01
      000274 C0 05                  622 	mov	p, a
      000276 33 00                  623 	pop	af
      000278                        624 00141$:
      000278 01 11                  625 	sub	a, #1
      00027A 20 0C                  626 	t0sn.io	f, c
      00027C 41 19                  627 	goto	00142$
      00027E                        628 00143$:
      00027E C0 0A                  629 	sl	p
      000280 3C 19                  630 	goto	00141$
      000282                        631 00142$:
      000282 B0 00                  632 	mov.io	a, __pa
      000284 40 07                  633 	or	a, p
      000286 90 00                  634 	mov.io	__pa, a
                                    635 ;	main.c: 144: leds[i].on = 0;
      000288 DB 07                  636 	mov	a, _handle_tick_sloc20_1_0+0
      00028A C0 05                  637 	mov	p, a
      00028C 00 17                  638 	mov	a, #0x00
      00028E E0 00                  639 	idxm	p, a
      000290 4C 19                  640 	goto	00103$
      000292                        641 00102$:
                                    642 ;	main.c: 148: flash_led(i);
      000292 D8 07                  643 	mov	a, _handle_tick_sloc17_1_0+0
      000294 D1 05                  644 	mov	_flash_led_PARM_1+0, a
      000296 DE 1C                  645 	call	_flash_led
      000298                        646 00103$:
                                    647 ;	main.c: 151: load_next_delay_target(i);
      000298 D8 07                  648 	mov	a, _handle_tick_sloc17_1_0+0
      00029A D3 05                  649 	mov	_load_next_delay_target_PARM_1+0, a
      00029C F0 1C                  650 	call	_load_next_delay_target
                                    651 ;	main.c: 152: leds[i].delay_count = 0;
      00029E D8 07                  652 	mov	a, _handle_tick_sloc17_1_0+0
      0002A0 1B 00                  653 	sl	a
      0002A2 1B 00                  654 	sl	a
      0002A4 18 06                  655 	add	a, _handle_tick_sloc17_1_0+0
      0002A6 02 10                  656 	add	a, #(_leds + 0)
      0002A8 04 10                  657 	add	a, #0x04
      0002AA C0 05                  658 	mov	p, a
      0002AC 00 17                  659 	mov	a, #0x00
      0002AE E0 00                  660 	idxm	p, a
      0002B0                        661 00109$:
                                    662 ;	main.c: 136: for (uint8_t i = 0; i < 2; i++)
      0002B0 18 09                  663 	inc	_handle_tick_sloc17_1_0+0
      0002B2 14 19                  664 	goto	00108$
      0002B4                        665 00110$:
                                    666 ;	main.c: 155: }
      0002B4 3A 00                  667 	ret
                                    668 ;	main.c: 157: void main(void) {
                                    669 ;	-----------------------------------------
                                    670 ;	 function main
                                    671 ;	-----------------------------------------
      0002B6                        672 _main:
                                    673 ;	main.c: 159: uint16_t cnt = 0;
      0002B6 9C 09                  674 	clear	_main_sloc21_1_0+0
      0002B8 9D 09                  675 	clear	_main_sloc21_1_0+1
                                    676 ;	main.c: 160: sys_init();
      0002BA 2D 1C                  677 	call	_sys_init
                                    678 ;	main.c: 161: lfsr_init();
      0002BC 99 1C                  679 	call	_lfsr_init
                                    680 ;	main.c: 167: while (cnt++ < delay) {}
      0002BE                        681 00101$:
      0002BE DD 07                  682 	mov	a, _main_sloc21_1_0+1
      0002C0 C0 05                  683 	mov	p, a
      0002C2 DC 07                  684 	mov	a, _main_sloc21_1_0+0
      0002C4 1C 09                  685 	inc	_main_sloc21_1_0+0
      0002C6 1D 08                  686 	addc	_main_sloc21_1_0+1
      0002C8 3A 11                  687 	sub	a, #0x3a
      0002CA 0A 17                  688 	mov	a, #0x0a
      0002CC C0 09                  689 	xch	a, p
      0002CE C0 06                  690 	subc	a, p
      0002D0 20 0C                  691 	t0sn.io	f, c
      0002D2 5F 19                  692 	goto	00101$
      0002D4                        693 00121$:
                                    694 ;	main.c: 168: cnt = 0;        
      0002D4 9C 09                  695 	clear	_main_sloc21_1_0+0
      0002D6 9D 09                  696 	clear	_main_sloc21_1_0+1
                                    697 ;	main.c: 169: handle_tick();
      0002D8 13 1D                  698 	call	_handle_tick
      0002DA 5F 19                  699 	goto	00101$
                                    700 ;	main.c: 179: }
      0002DC 3A 00                  701 	ret
                                    702 	.area CODE
                                    703 	.area CONST
                                    704 	.area CABS (ABS)
