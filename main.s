	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r6, #1024
	mov	r4, #0
	ldr	lr, .L4
	ldr	ip, .L4+4
	strh	r6, [r3]	@ movhi
	ldr	r5, .L4+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+12
	str	r4, [lr]
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r3, .L4+16
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r5
	mov	r3, r6
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+36
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	goldenaxestartPal
	.word	6576
	.word	100679680
	.word	goldenaxestartTiles
	.word	100720640
	.word	goldenaxestartMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	ip, #18432
	mov	r2, #4096
	ldr	r0, .L8+4
	ldr	r1, .L8+8
	strh	r2, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	ldr	r2, .L8+12
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	4104
	.word	7172
	.word	setupSounds
	.word	setupSoundInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions.part.0, %function
instructions.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	instructions.part.0, .-instructions.part.0
	.set	lose.part.0,instructions.part.0
	.set	win.part.0,instructions.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r5, #1024
	mov	r3, #67108864
	ldr	r0, .L16
	ldr	lr, .L16+4
	strh	r5, [r3]	@ movhi
	ldr	r4, .L16+8
	str	ip, [r0]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+12
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #1328
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L16+24
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L16+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	instructionsgoldenaxePal
	.word	100679680
	.word	instructionsgoldenaxeTiles
	.word	100720640
	.word	instructionsgoldenaxeMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r5, #1024
	mov	r3, #67108864
	ldr	r0, .L20
	ldr	lr, .L20+4
	strh	r5, [r3]	@ movhi
	ldr	r4, .L20+8
	str	ip, [r0]
	mov	r3, #2912
	mov	r0, #3
	ldr	r2, .L20+12
	ldr	r1, .L20+16
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L20+28
	mov	lr, pc
	bx	r4
	mov	r1, #1
	ldr	r2, .L20+32
	ldr	r3, .L20+36
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+44
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	100679680
	.word	tilesetTiles
	.word	100720640
	.word	tilemappausedMap
	.word	tilesetPal
	.word	state
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	goToPause, .-goToPause
	.align	2
	.global	goToGameOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGameOne, %function
goToGameOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r3, .L24
	strh	r2, [r5]	@ movhi
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r0, .L24+4
	ldr	r3, .L24+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+12
	ldr	r7, .L24+16
	ldr	r4, .L24+20
	strh	r3, [r5, #8]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L24+24
	mov	lr, pc
	bx	r4
	mov	r1, r7
	mov	r3, #2912
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L24+28
	ldr	r1, .L24+32
	mov	lr, pc
	bx	r4
	ldr	r6, .L24+36
	ldr	r3, .L24+40
	mov	r1, r7
	mov	r2, r6
	strh	r3, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r3, #2912
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L24+44
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	mov	r0, #3
	ldr	r2, .L24+48
	ldr	r1, .L24+52
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L24+56
	ldr	r1, .L24+60
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+64
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L24+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+72
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L24+76
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	goldenaxestartmusic_length
	.word	goldenaxestartmusic_data
	.word	playSoundA
	.word	18433
	.word	tilesetTiles
	.word	DMANow
	.word	tilesetPal
	.word	100679680
	.word	tilemaplvloneMap
	.word	100696064
	.word	4104
	.word	tilemapparallaxbackgroundMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToGameOne, .-goToGameOne
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L38
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L27
	ldr	r2, .L38+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L27:
	tst	r3, #4
	beq	.L26
	ldr	r3, .L38+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L37
.L26:
	pop	{r4, lr}
	bx	lr
.L37:
	pop	{r4, lr}
	b	goToInstructions
.L36:
	bl	goToGameOne
	ldr	r3, .L38+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L27
.L39:
	.align	2
.L38:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	start, .-start
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L52
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L41
	ldr	r2, .L52+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L50
.L41:
	tst	r3, #4
	beq	.L40
	ldr	r3, .L52+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L51
.L40:
	pop	{r4, lr}
	bx	lr
.L51:
	pop	{r4, lr}
	b	goToStart
.L50:
	bl	goToGameOne
	ldrh	r3, [r4]
	b	.L41
.L53:
	.align	2
.L52:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToGameTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGameTwo, %function
goToGameTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L55
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	state
	.size	goToGameTwo, .-goToGameTwo
	.align	2
	.global	gameTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameTwo, %function
gameTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	gameTwo, .-gameTwo
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	r3, #256
	mov	r2, #67108864
	ldr	r0, .L60+4
	ldr	lr, .L60+8
	strh	r3, [r2]	@ movhi
	ldr	r4, .L60+12
	str	ip, [r0]
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+16
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #1456
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L60+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L60+24
	ldr	r1, .L60+28
	mov	lr, pc
	bx	r4
	mov	r1, #4
	ldr	r2, .L60+32
	ldr	r3, .L60+36
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L60+44
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	stopSounds
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	wingoldenaxePal
	.word	wingoldenaxeTiles
	.word	100679680
	.word	wingoldenaxeMap
	.word	state
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L64
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L65:
	.align	2
.L64:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	instructions, .-instructions
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #67108864
	mov	r4, #256
	ldr	r3, .L69
	strh	r4, [r2]	@ movhi
	ldr	r1, [r3]
	mov	r2, #0
	ldr	r0, .L69+4
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r0, .L69+12
	ldr	lr, .L69+16
	str	ip, [r0]
	mov	r3, r4
	mov	r2, #83886080
	ldr	r4, .L69+20
	mov	r0, #3
	ldr	r1, .L69+24
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #1488
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L69+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L69+32
	ldr	r1, .L69+36
	mov	lr, pc
	bx	r4
	mov	r1, #5
	ldr	r2, .L69+40
	ldr	r3, .L69+44
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69+52
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	gameoversoundeffect_length
	.word	gameoversoundeffect_data
	.word	playSoundB
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	losegoldenaxePal
	.word	losegoldenaxeTiles
	.word	100679680
	.word	losegoldenaxeMap
	.word	state
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	goToLose, .-goToLose
	.align	2
	.global	gameOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameOne, %function
gameOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L82+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L82+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L72
	ldr	r3, .L82+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
.L72:
	ldr	r3, .L82+28
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L80
.L73:
	ldr	r3, .L82+32
	ldr	r3, [r3]
	cmp	r3, #4
	bgt	.L81
	pop	{r4, lr}
	bx	lr
.L81:
	ldr	r3, .L82+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L80:
	ldr	r3, .L82+36
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L73
.L79:
	ldr	r3, .L82+36
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L72
.L83:
	.align	2
.L82:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	score
	.word	stopSounds
	.size	gameOne, .-gameOne
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	ldr	r5, .L104+4
	ldr	fp, .L104+8
	ldr	r10, .L104+12
	ldr	r9, .L104+16
	ldr	r8, .L104+20
	ldr	r7, .L104+24
	ldr	r6, .L104+28
.L93:
	ldrh	r2, [r5]
	ldr	r3, .L104+32
	strh	r2, [fp]	@ movhi
	ldrh	r1, [r3, #48]
	ldr	r3, [r10]
	strh	r1, [r5]	@ movhi
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L85
.L87:
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L85
	.word	.L89
	.word	.L88
	.word	.L86
.L86:
	tst	r2, #8
	ldrne	r3, .L104+36
	movne	lr, pc
	bxne	r3
.L85:
	ldr	r2, [r9]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r4, #16]	@ movhi
	ldr	r3, [r8]
	add	r2, r2, r2, lsr #31
	add	r1, r3, r3, lsr #31
	asr	r2, r2, #1
	asr	r1, r1, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsl	r1, r1, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	strh	r3, [r4, #18]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #20]	@ movhi
	mov	r3, #512
	strh	r1, [r4, #22]	@ movhi
	mov	r2, #117440512
	mov	r1, r6
	mov	lr, pc
	bx	r7
	b	.L93
.L88:
	tst	r2, #8
	beq	.L85
	ldr	r3, .L104+40
	mov	lr, pc
	bx	r3
	b	.L85
.L89:
	tst	r2, #8
	beq	.L85
	ldr	r3, .L104+44
	mov	lr, pc
	bx	r3
	b	.L85
.L90:
	ldr	r3, .L104+48
	mov	lr, pc
	bx	r3
	b	.L85
.L92:
	ldr	r3, .L104+52
	mov	lr, pc
	bx	r3
	b	.L85
.L91:
	ldr	r3, .L104+56
	mov	lr, pc
	bx	r3
	b	.L85
.L105:
	.align	2
.L104:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	shadowOAM
	.word	67109120
	.word	instructions.part.0
	.word	lose.part.0
	.word	win.part.0
	.word	gameOne
	.word	start
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	whichGame,4,4
	.comm	state,4,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
