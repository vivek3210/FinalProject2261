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
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r5, #75
	mov	r4, #95
	mov	lr, #10
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L4
	strb	r2, [r3, #56]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #32]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #48]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #584
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #1
	mov	r7, #2
	mov	r1, #16
	mov	r0, #0
	mov	r4, #10
	mov	lr, #3
	mov	r8, #896
	mov	r6, #188
	mov	r5, #124
	ldr	r2, .L8
	str	r3, [r2, #4]
	ldr	r3, .L8+4
	strb	ip, [r2, #56]
	strb	r7, [r3, #56]
	str	r8, [r2]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r2, #32]
	str	r4, [r3, #32]
	str	lr, [r2, #48]
	str	lr, [r3, #48]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	r0, [r2, #36]
	str	r0, [r3, #36]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	enemy1
	.word	enemy2
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFood, %function
initFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, lr}
	ldr	r4, .L12
	ldr	r5, .L12+4
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r5
	ldr	r2, .L12+8
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #3
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L12+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl r1
	sub	r3, r0, r3, lsl #2
	str	r3, [r4, #4]
	strb	r1, [r4, #56]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	food
	.word	rand
	.word	-1677082467
	.word	-368140053
	.size	initFood, .-initFood
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r2, #1
	mov	ip, #75
	mov	r1, #10
	mov	r5, #16
	mov	r6, #3
	mov	r0, #95
	ldr	r3, .L16
	str	r4, [r3]
	ldr	r3, .L16+4
	str	r4, [r3]
	ldr	r3, .L16+8
	mov	r9, #400
	str	r4, [r3, #36]
	strb	r4, [r3, #56]
	str	ip, [r3]
	str	r1, [r3, #32]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r6, [r3, #48]
	str	r0, [r3, #4]
	mov	r8, #80
	bl	initEnemies
	bl	initFood
	mov	r3, #8
	mov	r1, #32
	mov	r2, #5
	mov	lr, #40
	mov	ip, #6
	ldr	fp, .L16+12
	str	r4, [fp]
	ldr	r4, .L16+16
	str	r6, [r4]
	ldr	r4, .L16+20
	str	r5, [r4, #16]
	ldr	r5, .L16+24
	strb	r3, [r5, #56]
	str	r1, [r5, #16]
	str	r1, [r5, #20]
	str	r9, [r5]
	str	r8, [r5, #4]
	ldr	r5, .L16+28
	str	r1, [r5, #16]
	ldr	r1, .L16+32
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r2, [r1, #4]
	str	lr, [r1]
	strb	ip, [r1, #56]
	ldr	r1, .L16+36
	mov	r7, #4
	str	r3, [r4, #20]
	str	r3, [r5, #20]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	mov	r3, #7
	mov	r10, #70
	mov	r0, #90
	strb	r7, [r5, #56]
	strb	r2, [r4, #56]
	strb	r3, [r1, #56]
	str	r10, [r4]
	str	r2, [r4, #4]
	str	r2, [r5]
	str	r2, [r5, #4]
	str	r2, [r1, #4]
	str	r0, [r1]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	hOff
	.word	vOff
	.word	player
	.word	score
	.word	lives
	.word	lifeDisplay
	.word	princess
	.word	scoreDisplay
	.word	scoreNum
	.word	lifeNum
	.size	initGame, .-initGame
	.align	2
	.global	initPrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPrincess, %function
initPrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #400
	mov	r0, #80
	mov	r1, #8
	ldr	r3, .L19
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L20:
	.align	2
.L19:
	.word	princess
	.size	initPrincess, .-initPrincess
	.align	2
	.global	initScoreDisplay
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScoreDisplay, %function
initScoreDisplay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #5
	mov	ip, #32
	mov	r0, #8
	mov	r1, #4
	ldr	r3, .L22
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	strb	r1, [r3, #56]
	str	r2, [r3]
	str	r2, [r3, #4]
	bx	lr
.L23:
	.align	2
.L22:
	.word	scoreDisplay
	.size	initScoreDisplay, .-initScoreDisplay
	.align	2
	.global	initLifeDisplay
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLifeDisplay, %function
initLifeDisplay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #5
	mov	ip, #16
	mov	r0, #8
	mov	r1, #70
	ldr	r3, .L25
	stm	r3, {r1, r2}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	strb	r2, [r3, #56]
	bx	lr
.L26:
	.align	2
.L25:
	.word	lifeDisplay
	.size	initLifeDisplay, .-initLifeDisplay
	.align	2
	.global	initScoreNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScoreNum, %function
initScoreNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	ip, #40
	mov	r0, #5
	mov	r1, #6
	ldr	r3, .L28
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L29:
	.align	2
.L28:
	.word	scoreNum
	.size	initScoreNum, .-initScoreNum
	.align	2
	.global	initLifeNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLifeNum, %function
initLifeNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	ip, #90
	mov	r0, #5
	mov	r1, #7
	ldr	r3, .L31
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L32:
	.align	2
.L31:
	.word	lifeNum
	.size	initLifeNum, .-initLifeNum
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r1, .L35
	ldr	r2, .L35+4
	ldr	r3, [r1]
	ldr	r0, [r2]
	ldr	r2, .L35+8
	ldr	ip, [r1, #36]
	ldr	lr, [r2]
	sub	r3, r3, r0
	ldr	r2, [r1, #4]
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	ldr	r1, [r1, #44]
	ldr	r4, .L35+12
	add	ip, r1, ip, lsl #5
	lsl	r3, r3, #23
	ldr	r1, .L35+16
	sub	r2, r2, lr
	lsr	r3, r3, #23
	add	lr, r4, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	and	r2, r2, #255
	and	r1, r1, ip, lsl #1
	strh	r3, [lr, #2]	@ movhi
	strh	r2, [r4, r0]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	1022
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r1, .L39
	ldr	r3, .L39+4
	ldr	r0, [r1]
	ldr	r3, [r3]
	ldr	ip, [r1, #36]
	ldr	r2, .L39+8
	ldr	r4, [r1, #4]
	rsb	r3, r3, r0, asr #3
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	ldr	r1, [r1, #44]
	ldr	r2, [r2]
	add	ip, ip, #4
	ldr	lr, .L39+12
	add	ip, r1, ip, lsl #5
	lsl	r3, r3, #23
	ldr	r1, .L39+16
	rsb	r2, r2, r4, asr #3
	lsr	r3, r3, #23
	add	r4, lr, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	and	r2, r2, #255
	and	r1, r1, ip, lsl #1
	strh	r3, [r4, #2]	@ movhi
	strh	r2, [lr, r0]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	enemy1
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	1022
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bl	drawPlayer
	ldr	r5, .L43
	bl	drawEnemies
	ldr	r3, .L43+4
	ldr	r2, [r5]
	ldrh	r0, [r3]
	ldr	ip, .L43+8
	sub	r2, r2, r0
	and	r2, r2, ip
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	mov	r10, #8
	ldr	r3, .L43+12
	ldr	lr, .L43+16
	ldr	r8, [r3]
	ldrh	r4, [lr]
	ldr	r1, [r3, #4]
	ldrb	lr, [r3, #56]	@ zero_extendqisi2
	ldr	r3, .L43+20
	ldr	r7, [r5, #4]
	ldrb	fp, [r5, #56]	@ zero_extendqisi2
	sub	r0, r8, r0
	add	r5, r3, lr, lsl #3
	and	r0, r0, ip
	strh	r0, [r5, #2]	@ movhi
	ldr	r9, .L43+24
	add	r0, r3, fp, lsl #3
	sub	r1, r1, r4
	sub	r4, r7, r4
	strh	r2, [r0, #2]	@ movhi
	lsl	lr, lr, #3
	ldr	r2, .L43+28
	and	r1, r1, #255
	and	r4, r4, #255
	lsl	fp, fp, #3
	strh	r1, [r3, lr]	@ movhi
	strh	r4, [r3, fp]	@ movhi
	ldr	r4, [r9]
	strh	r10, [r5, #4]	@ movhi
	ldrb	r1, [r9, #56]	@ zero_extendqisi2
	strh	r2, [r0, #4]	@ movhi
	ldrb	r2, [r9, #4]	@ zero_extendqisi2
	ldr	r7, .L43+32
	and	r4, r4, ip
	ldr	r6, .L43+36
	lsl	r0, r1, #3
	orr	r4, r4, #16384
	add	r1, r3, r1, lsl #3
	orr	r2, r2, #16384
	strh	r2, [r3, r0]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	ldrb	r0, [r7, #56]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
	ldr	r4, .L43+40
	ldr	r7, [r7]
	ldr	r8, .L43+44
	ldr	lr, [r6]
	strh	r4, [r1, #4]	@ movhi
	ldr	r5, .L43+48
	and	r7, r7, ip
	lsl	r4, r0, #3
	orr	r2, r2, #16384
	add	r0, r3, r0, lsl #3
	strh	r2, [r3, r4]	@ movhi
	ldrb	r1, [r8, #56]	@ zero_extendqisi2
	strh	r7, [r0, #2]	@ movhi
	ldr	r2, [r8]
	ldr	r7, .L43+52
	add	lr, lr, #128
	ldrb	r4, [r8, #4]	@ zero_extendqisi2
	and	lr, lr, r5
	strh	r7, [r0, #4]	@ movhi
	and	r2, r2, ip
	lsl	r0, r1, #3
	orr	lr, lr, #8192
	add	r1, r3, r1, lsl #3
	strh	r4, [r3, r0]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	r4, .L43+56
	strh	lr, [r1, #4]	@ movhi
	ldr	r2, [r6, #4]
	ldrb	r1, [r4, #56]	@ zero_extendqisi2
	ldr	r0, [r4]
	add	r2, r2, #128
	ldrb	r4, [r4, #4]	@ zero_extendqisi2
	and	r2, r2, r5
	add	lr, r3, r1, lsl #3
	orr	r2, r2, #8192
	lsl	r1, r1, #3
	and	ip, ip, r0
	strh	r2, [lr, #4]	@ movhi
	strh	r4, [r3, r1]	@ movhi
	strh	ip, [lr, #2]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	princess
	.word	hOff
	.word	511
	.word	food
	.word	vOff
	.word	shadowOAM
	.word	scoreDisplay
	.word	12488
	.word	lifeDisplay
	.word	.LANCHOR0
	.word	8232
	.word	scoreNum
	.word	1023
	.word	8264
	.word	lifeNum
	.size	drawGame, .-drawGame
	.align	2
	.global	drawFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFood, %function
drawFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #8
	ldr	r1, .L47
	ldr	r2, .L47+4
	ldr	r0, .L47+8
	ldr	ip, [r2]
	ldr	r3, [r1]
	ldr	r0, [r0]
	ldr	r2, [r1, #4]
	sub	r3, r3, ip
	ldrb	r1, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L47+12
	sub	r2, r2, r0
	lsl	r3, r3, #23
	add	r0, ip, r1, lsl #3
	lsr	r3, r3, #23
	lsl	r1, r1, #3
	and	r2, r2, #255
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
	.word	food
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawFood, .-drawFood
	.align	2
	.global	drawPrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPrincess, %function
drawPrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L51
	ldr	r2, .L51+4
	ldr	r3, [r1]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, .L51+8
	ldr	r2, [r1, #4]
	ldr	r0, [r0]
	ldrb	r1, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L51+12
	ldr	lr, .L51+16
	sub	r2, r2, r0
	and	r2, r2, #255
	add	r0, ip, r1, lsl #3
	lsl	r1, r1, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	princess
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	12488
	.size	drawPrincess, .-drawPrincess
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L55
	ldr	r3, [r1]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L55+4
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	lr, .L55+8
	lsr	r3, r3, #23
	add	r0, ip, r2, lsl #3
	orr	r3, r3, #16384
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [ip, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	scoreDisplay
	.word	shadowOAM
	.word	8232
	.size	drawScore, .-drawScore
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L59
	ldr	r3, [r1]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L59+4
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	ldr	lr, .L59+8
	lsl	r3, r3, #23
	add	r0, ip, r2, lsl #3
	lsr	r3, r3, #23
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [ip, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L60:
	.align	2
.L59:
	.word	lifeDisplay
	.word	shadowOAM
	.word	8264
	.size	drawLives, .-drawLives
	.align	2
	.global	drawScoreNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScoreNum, %function
drawScoreNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L63
	ldr	r0, .L63+4
	ldr	r3, [r3]
	ldr	r2, [r0]
	add	r3, r3, #128
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	ip, .L63+8
	lsl	r3, r3, #22
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r3, r3, #22
	lsl	r2, r2, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #8192
	lsl	r1, r1, #3
	lsr	r2, r2, #23
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.word	scoreNum
	.word	shadowOAM
	.size	drawScoreNum, .-drawScoreNum
	.align	2
	.global	drawLifeNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLifeNum, %function
drawLifeNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L67
	ldr	r0, .L67+4
	ldr	r3, [r3, #4]
	ldr	r2, [r0]
	add	r3, r3, #128
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	ip, .L67+8
	lsl	r3, r3, #22
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r3, r3, #22
	lsl	r2, r2, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #8192
	lsl	r1, r1, #3
	lsr	r2, r2, #23
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
	.word	lifeNum
	.word	shadowOAM
	.size	drawLifeNum, .-drawLifeNum
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L106
	ldr	r4, .L106+4
	ldrh	r1, [r6]
	add	r5, r4, #16
	tst	r1, #64
	str	r3, [r4, #40]
	ldm	r5, {r5, r7}
	ldr	r3, [r4]
	sub	sp, sp, #16
	bne	.L70
	mov	ip, #1
	mov	r0, #2
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #12]
	sub	r2, r2, lr
	str	r2, [r4, #4]
	str	ip, [r4, #40]
	str	r0, [r4, #36]
.L70:
	ands	r0, r1, #128
	bne	.L71
	mov	ip, #1
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #12]
	add	r2, r2, lr
	str	r0, [r4, #36]
	str	r2, [r4, #4]
	str	ip, [r4, #40]
.L71:
	tst	r1, #32
	bne	.L72
	mov	r2, #1
	ldr	r0, [r4, #8]
	sub	r3, r3, r0
	str	r3, [r4]
	str	r2, [r4, #40]
	str	r2, [r4, #36]
.L72:
	ldr	r10, .L106+8
	ldrh	r8, [r10]
	tst	r1, #16
	and	r3, r8, #1
	bne	.L73
	mov	ip, #1
	mov	r2, #3
	ldr	r0, [r4]
	cmp	r3, #0
	ldr	r3, [r4, #8]
	add	r9, r0, r3
	str	r9, [r4]
	str	ip, [r4, #40]
	str	r2, [r4, #36]
	beq	.L74
	ands	r9, r1, #1
	beq	.L104
.L78:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L105
	mov	r2, #10
	add	r5, r4, #16
	str	r3, [r4, #44]
	ldrh	r8, [r10]
	str	r2, [r4, #32]
	ldr	r9, [r4]
	ldm	r5, {r5, r7}
.L80:
	mov	r3, #0
	ldr	r2, .L106+12
	cmp	r9, r3
	str	r3, [r2]
	strlt	r3, [r4]
	ldr	r3, [r4, #4]
	movlt	r0, r5
	addge	r0, r9, r5
	cmp	r3, #0
	movlt	r2, #0
	movlt	r3, r7
	strlt	r2, [r4, #4]
	addge	r3, r3, r7
	cmp	r0, #512
	rsbgt	r2, r5, #512
	rsb	r1, r5, #240
	strgt	r2, [r4]
	add	r1, r1, r1, lsr #31
	cmp	r3, #256
	sub	r1, r9, r1, asr #1
	rsbgt	r7, r7, #256
	strgt	r7, [r4, #4]
	cmp	r1, #0
	movlt	r3, #0
	ldr	ip, .L106+16
	str	r1, [ip]
	strlt	r3, [ip]
	blt	.L88
	cmp	r1, #272
	movgt	r3, #272
	strgt	r3, [ip]
.L88:
	tst	r8, #512
	beq	.L69
	tst	r8, #256
	beq	.L69
	ldrh	r3, [r6]
	tst	r3, #768
	ldreq	r3, .L106+20
	ldmeq	r3, {r2, r3}
	stmeq	r4, {r2, r3}
.L69:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L105:
	add	r5, r4, #16
	ldrh	r8, [r10]
	ldr	r9, [r4]
	ldm	r5, {r5, r7}
.L74:
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L80
	ldr	r0, [r4, #44]
	ldr	r3, .L106+24
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #44]
	str	r3, [r4, #32]
	b	.L80
.L73:
	cmp	r3, #0
	beq	.L78
	ands	r9, r1, #1
	bne	.L78
.L104:
	ldr	r8, .L106+28
	ldm	r8, {r0, r1}
	add	ip, r8, #16
	asr	r1, r1, #3
	asr	r0, r0, #3
	ldm	ip, {ip, lr}
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r1, [r4, #4]
	ldr	r0, [r4]
	add	r2, r5, #10
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r5, .L106+32
	add	r3, r7, #10
	sub	r1, r1, #5
	sub	r0, r0, #5
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L78
	mov	r0, #4
	ldr	r1, .L106+36
	ldr	r2, [r1]
	ldr	ip, [r4, #4]
	ldr	r3, [r4]
	add	r2, r2, #1
	str	r2, [r1]
	add	r3, r3, ip, lsl #3
	ldr	r2, .L106+40
	lsl	r3, r3, #1
	strh	r0, [r2, r3]	@ movhi
	str	r9, [r8]
	str	r9, [r8, #4]
	b	.L78
.L107:
	.align	2
.L106:
	.word	buttons
	.word	player
	.word	oldButtons
	.word	vOff
	.word	hOff
	.word	princess
	.word	__aeabi_idivmod
	.word	enemy1
	.word	collision
	.word	score
	.word	100679680
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L120
	ldr	r4, .L120+4
	ldr	r2, [r3]
	ldr	r1, [r4]
	cmp	r1, r2, lsl #3
	ldr	r2, [r4, #4]
	bge	.L109
	mov	lr, #3
	mov	ip, #1
	ldr	r0, [r4, #8]
	add	r1, r0, r1
	str	r1, [r4]
	str	lr, [r4, #36]
	str	ip, [r4, #40]
.L110:
	ldr	r1, [r3, #4]
	cmp	r2, r1, lsl #3
	bge	.L111
	mov	ip, #0
	mov	r0, #1
	ldr	r1, [r4, #12]
	add	r2, r1, r2
	str	r2, [r4, #4]
	str	ip, [r4, #36]
	str	r0, [r4, #40]
.L112:
	ldr	r2, [r4, #32]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r4, #32]
	bne	.L108
	add	r0, r3, #44
	ldm	r0, {r0, r1}
	ldr	r3, .L120+8
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #44]
	str	r3, [r4, #32]
.L108:
	pop	{r4, lr}
	bx	lr
.L111:
	ble	.L113
	mov	r0, #2
	mov	r1, #1
	ldr	ip, [r4, #12]
	sub	r2, r2, ip
	str	r2, [r4, #4]
	str	r0, [r4, #36]
	str	r1, [r4, #40]
	b	.L112
.L113:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	moveq	r3, #10
	streq	r2, [r4, #44]
	streq	r3, [r4, #32]
	bne	.L112
	pop	{r4, lr}
	bx	lr
.L109:
	ble	.L110
	mov	r0, #1
	ldr	ip, [r4, #8]
	sub	r1, r1, ip
	str	r1, [r4]
	str	r0, [r4, #36]
	str	r0, [r4, #40]
	b	.L110
.L121:
	.align	2
.L120:
	.word	player
	.word	enemy1
	.word	__aeabi_idivmod
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFood, %function
updateFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L129
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	sub	sp, sp, #20
	ldr	r0, .L129+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L129+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L122
	ldr	r2, .L129+12
	ldr	r3, [r2]
	cmp	r3, #2
	addle	r3, r3, #1
	strle	r3, [r2]
	mov	r2, #240
	mov	r3, #180
	stm	r4, {r2, r3}
.L122:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L130:
	.align	2
.L129:
	.word	food
	.word	player
	.word	collision
	.word	lives
	.size	updateFood, .-updateFood
	.align	2
	.global	updatePrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePrincess, %function
updatePrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L141
	add	r1, r3, #16
	ldr	r2, [r3, #4]
	ldm	r1, {r1, ip}
	ldr	r3, [r3]
	sub	sp, sp, #16
	ldr	r0, .L141+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L141+8
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L131
	ldr	r3, .L141+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L131
	ldr	r3, .L141+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L140
.L131:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L140:
	ldr	r3, .L141+20
	mov	lr, pc
	bx	r3
	b	.L131
.L142:
	.align	2
.L141:
	.word	princess
	.word	player
	.word	collision
	.word	oldButtons
	.word	buttons
	.word	goToWin
	.size	updatePrincess, .-updatePrincess
	.align	2
	.global	updateLifeNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLifeNum, %function
updateLifeNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L151
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L149
	cmp	r3, #2
	bne	.L150
	mov	r2, #9
	ldr	r3, .L151+4
	str	r2, [r3, #4]
	bx	lr
.L150:
	cmp	r3, #1
	moveq	r2, #8
	ldreq	r3, .L151+4
	streq	r2, [r3, #4]
	bx	lr
.L149:
	mov	r2, #10
	ldr	r3, .L151+4
	str	r2, [r3, #4]
	bx	lr
.L152:
	.align	2
.L151:
	.word	lives
	.word	.LANCHOR0
	.size	updateLifeNum, .-updateLifeNum
	.align	2
	.global	updateScoreNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScoreNum, %function
updateScoreNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L173
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L154
	mov	r2, #7
	ldr	r3, .L173+4
	str	r2, [r3]
	bx	lr
.L154:
	cmp	r3, #1
	bne	.L169
	mov	r2, #8
	ldr	r3, .L173+4
	str	r2, [r3]
	bx	lr
.L169:
	cmp	r3, #2
	bne	.L170
	mov	r2, #9
	ldr	r3, .L173+4
	str	r2, [r3]
	bx	lr
.L170:
	cmp	r3, #3
	bne	.L171
	mov	r2, #10
	ldr	r3, .L173+4
	str	r2, [r3]
	bx	lr
.L171:
	cmp	r3, #4
	bne	.L172
	mov	r2, #11
	ldr	r3, .L173+4
	str	r2, [r3]
	bx	lr
.L172:
	cmp	r3, #5
	moveq	r2, #12
	ldreq	r3, .L173+4
	streq	r2, [r3]
	bx	lr
.L174:
	.align	2
.L173:
	.word	score
	.word	.LANCHOR0
	.size	updateScoreNum, .-updateScoreNum
	.align	2
	.global	checkPlayerEnemyCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkPlayerEnemyCollision, %function
checkPlayerEnemyCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L184
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	sub	sp, sp, #16
	ldr	r4, .L184+4
	asr	r2, r2, #3
	asr	r3, r3, #3
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r6, .L184+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L175
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r3, r2
	ble	.L177
	ldr	r0, .L184+12
	ldr	r1, [r0]
	sub	r3, r3, #10
	sub	r1, r1, #1
	str	r3, [r4]
	str	r1, [r0]
.L177:
	cmp	r2, r3
	bgt	.L183
.L178:
	mov	r2, #31
	ldr	r3, .L184+16
	strh	r2, [r3, #20]	@ movhi
.L175:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L183:
	ldr	r1, .L184+12
	ldr	r2, [r1]
	add	r3, r3, #10
	sub	r2, r2, #1
	str	r3, [r4]
	str	r2, [r1]
	b	.L178
.L185:
	.align	2
.L184:
	.word	enemy1
	.word	player
	.word	collision
	.word	lives
	.word	83886592
	.size	checkPlayerEnemyCollision, .-checkPlayerEnemyCollision
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	updateEnemies
	bl	updateFood
	bl	updatePrincess
	bl	updateScoreNum
	ldr	r3, .L194
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L192
	cmp	r3, #2
	bne	.L193
	mov	r2, #9
	ldr	r3, .L194+4
	str	r2, [r3, #4]
.L188:
	pop	{r4, lr}
	b	checkPlayerEnemyCollision
.L193:
	cmp	r3, #1
	bne	.L188
	mov	r2, #8
	ldr	r3, .L194+4
	pop	{r4, lr}
	str	r2, [r3, #4]
	b	checkPlayerEnemyCollision
.L192:
	mov	r2, #10
	ldr	r3, .L194+4
	pop	{r4, lr}
	str	r2, [r3, #4]
	b	checkPlayerEnemyCollision
.L195:
	.align	2
.L194:
	.word	lives
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.global	lifeDisplayTileIndex
	.global	scoreDisplayTileIndex
	.comm	lives,4,4
	.comm	score,4,4
	.comm	lifeNum,60,4
	.comm	scoreNum,60,4
	.comm	lifeDisplay,60,4
	.comm	scoreDisplay,60,4
	.comm	princess,60,4
	.comm	food,60,4
	.comm	enemy2,60,4
	.comm	enemy1,60,4
	.comm	player,60,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	scoreDisplayTileIndex, %object
	.size	scoreDisplayTileIndex, 4
scoreDisplayTileIndex:
	.word	8
	.type	lifeDisplayTileIndex, %object
	.size	lifeDisplayTileIndex, 4
lifeDisplayTileIndex:
	.word	8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
