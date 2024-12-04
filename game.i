# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1



void initGame();
void initBugsBunny();

void game();

void updateGame();
void updateBugsBunny();

void drawGame();
void drawBugsBunny();

void checkDoorCollision();

extern int score;
extern int lives;

extern int hOff;
extern int vOff;
# 2 "game.c" 2
# 1 "sprites.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 44 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 63 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 97 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 5 "sprites.h" 2





typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int drawX;
    int drawY;

    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;

    int hide;
    u8 oamIndex;
} SPRITE;
# 3 "game.c" 2

# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "game.c" 2

# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 7 "game.c" 2

SPRITE player;
SPRITE enemy1;
SPRITE enemy2;
SPRITE food;
SPRITE princess;
SPRITE scoreDisplay;
SPRITE lifeDisplay;
SPRITE scoreNum;
SPRITE lifeNum;

typedef enum {DOWN, LEFT, UP, RIGHT} DIRECTION;

int score;
int lives;
int scoreDisplayTileIndex = 8;
int lifeDisplayTileIndex = 8;

void initGame() {
    hOff = 0;
    vOff = 0;
    initPlayer();
    initEnemies();
    initFood();
    initPrincess();
    score = 0;
    lives = 3;
    initScoreDisplay();
    initLifeDisplay();
    initScoreNum();
    initLifeNum();
}

void updateGame() {
    updatePlayer();
    updateEnemies();
    updateFood();
    updatePrincess();
    updateScoreNum();
    updateLifeNum();
    checkPlayerEnemyCollision();
}

void drawGame() {
    drawPlayer();
    drawEnemies();
    drawFood();
    drawPrincess();
    drawScore();
    drawLives();
    drawScoreNum();
    drawLifeNum();
}

void initPlayer() {
    player.width = 16;
    player.height = 16;
    player.xVel = 1;
    player.yVel = 1;
    player.direction = DOWN;
    player.oamIndex = 0;

    player.x = 75;
    player.y = 95;
    player.timeUntilNextFrame = 10;
    player.numFrames = 3;
}

void initEnemies() {
    enemy1.width = 16;
    enemy1.height = 16;


    enemy1.xVel = 0;
    enemy1.yVel = 0;
    enemy1.direction = DOWN;
    enemy1.oamIndex = 1;

    enemy1.x = 112 << 3;
    enemy1.y = 73 << 3;
    enemy1.timeUntilNextFrame = 10;
    enemy1.numFrames = 3;

    enemy2.width = 16;
    enemy2.height = 16;
    enemy2.xVel = 1;
    enemy2.yVel = 1;
    enemy2.direction = DOWN;
    enemy2.oamIndex = 2;

    enemy2.x = 188;
    enemy2.y = 124;
    enemy2.timeUntilNextFrame = 10;
    enemy2.numFrames = 3;
}

void initFood() {
    food.width = 8;
    food.height = 8;
    food.x = rand() % 210;
    food.y = rand() % 140;
    food.oamIndex = 3;
}

void initPrincess() {
    princess.width = 32;
    princess.height = 32;
    princess.x = 400;
    princess.y = 80;
    princess.oamIndex = 8;
}

void initScoreDisplay() {
    scoreDisplay.width = 32;
    scoreDisplay.height = 8;
    scoreDisplay.x = 5;
    scoreDisplay.y = 5;
    scoreDisplay.oamIndex = 4;
}

void initLifeDisplay() {
    lifeDisplay.width = 16;
    lifeDisplay.height = 8;
    lifeDisplay.x = 70;
    lifeDisplay.y = 5;
    lifeDisplay.oamIndex = 5;
}

void initScoreNum() {
    scoreNum.width = 8;
    scoreNum.height = 8;
    scoreNum.x = 40;
    scoreNum.y = 5;
    scoreNum.oamIndex = 6;
}

void initLifeNum() {
    lifeNum.width = 8;
    lifeNum.height = 8;
    lifeNum.x = 90;
    lifeNum.y = 5;
    lifeNum.oamIndex = 7;
}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = ((player.y - vOff) & 0xFF) | (0<<14) | (0<<13) | (0<<8);
    shadowOAM[player.oamIndex].attr1 = ((player.x - hOff) & 0x1FF) | (1<<14);
    shadowOAM[player.oamIndex].attr2 = ((((player.direction * 2) * (32) + (player.currentFrame * 2))) & 0x3FF) | (((0) & 3) << 10);
}

void drawEnemies() {
    shadowOAM[enemy1.oamIndex].attr0 = (((enemy1.y >> 3) - vOff) & 0xFF) | (0<<14) | (0<<13) | (0<<8);
    shadowOAM[enemy1.oamIndex].attr1 = (((enemy1.x >> 3) - hOff) & 0x1FF) | (1<<14);
    shadowOAM[enemy1.oamIndex].attr2 = ((((8 + enemy1.direction * 2) * (32) + (enemy1.currentFrame * 2))) & 0x3FF) | (((0) & 3) << 10);




}

void drawFood() {
    shadowOAM[food.oamIndex].attr0 = ((food.y - vOff) & 0xFF) | (0<<14) | (0<<13) | (0<<8);
    shadowOAM[food.oamIndex].attr1 = ((food.x - hOff) & 0x1FF) | (0<<14);
    shadowOAM[food.oamIndex].attr2 = ((((0) * (32) + (8))) & 0x3FF) | (((0) & 3) << 10);
}

void drawPrincess() {
    shadowOAM[princess.oamIndex].attr0 = ((princess.y - vOff) & 0xFF) | (0<<14) | (0<<13) | (0<<8);
    shadowOAM[princess.oamIndex].attr1 = ((princess.x - hOff) & 0x1FF) | (2<<14);
    shadowOAM[princess.oamIndex].attr2 = ((((6) * (32) + (8))) & 0x3FF) | (((0) & 3) << 10) | (((3) & 0xF) <<12);
}

void drawScore() {
    shadowOAM[scoreDisplay.oamIndex].attr0 = ((scoreDisplay.y) & 0xFF) | (1<<14) | (0<<13) | (0<<8);
    shadowOAM[scoreDisplay.oamIndex].attr1 = ((scoreDisplay.x) & 0x1FF) | (1<<14);
    shadowOAM[scoreDisplay.oamIndex].attr2 = ((((1) * (32) + (8))) & 0x3FF) | (((0) & 3) << 10) | (((2) & 0xF) <<12);
}

void drawLives() {
    shadowOAM[lifeDisplay.oamIndex].attr0 = ((lifeDisplay.y) & 0xFF) | (1<<14) | (0<<13) | (0<<8);
    shadowOAM[lifeDisplay.oamIndex].attr1 = ((lifeDisplay.x) & 0x1FF) | (0<<14);
    shadowOAM[lifeDisplay.oamIndex].attr2 = ((((2) * (32) + (8))) & 0x3FF) | (((0) & 3) << 10) | (((2) & 0xF) <<12);
}

void drawScoreNum() {
    shadowOAM[scoreNum.oamIndex].attr0 = ((scoreNum.y) & 0xFF) | (0<<14) | (0<<13) | (0<<8);
    shadowOAM[scoreNum.oamIndex].attr1 = ((scoreNum.x) & 0x1FF) | (0<<14);
    shadowOAM[scoreNum.oamIndex].attr2 = ((((4) * (32) + (scoreDisplayTileIndex))) & 0x3FF) | (((0) & 3) << 10) | (((2) & 0xF) <<12);
}

void drawLifeNum() {
    shadowOAM[lifeNum.oamIndex].attr0 = ((lifeNum.y) & 0xFF) | (0<<14) | (0<<13) | (0<<8);
    shadowOAM[lifeNum.oamIndex].attr1 = ((lifeNum.x) & 0x1FF) | (0<<14);
    shadowOAM[lifeNum.oamIndex].attr2 = ((((4) * (32) + (lifeDisplayTileIndex))) & 0x3FF) | (((0) & 3) << 10) | (((2) & 0xF) <<12);
}

void updatePlayer() {
    player.isAnimating = 0;

    int rightX = player.x + player.width - 1;
    int leftX = player.x;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    if ((~(buttons) & ((1<<6)))) {
        player.y -= player.yVel;
        player.isAnimating = 1;
        player.direction = UP;
    }
    if ((~(buttons) & ((1<<7)))) {
        player.y += player.yVel;
        player.isAnimating = 1;
        player.direction = DOWN;
    }
    if ((~(buttons) & ((1<<5)))) {
        player.x -= player.xVel;
        player.isAnimating = 1;
        player.direction = LEFT;
    }
    if ((~(buttons) & ((1<<4)))) {
        player.x += player.xVel;
        player.isAnimating = 1;
        player.direction = RIGHT;
    }

    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        int attackRadius = 5;

        if (collision(player.x - attackRadius, player.y - attackRadius, player.width + 2 * attackRadius, player.height + 2 * attackRadius, enemy1.x >> 3, enemy1.y >> 3, enemy1.width, enemy1.height)) {
            score++;
            ((SB*) 0x6000000)[8].tilemap[((player.y) * (8) + (player.x))] = (4 & 1023);
            enemy1.x = 0;
            enemy1.y = 0;
        }
    }

    if (player.isAnimating) {
        player.timeUntilNextFrame--;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 10;
        }
    } else {
        player.currentFrame = 0;
        player.timeUntilNextFrame = 10;
    }


    hOff = player.x - (240 - player.width) / 2;
    vOff = 0;
    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x + player.width > 512) {
        player.x = 512 - player.width;
    }
    if (player.y + player.height > 256) {
        player.y = 256 - player.height;
    }
    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (512 - 240)) {
        hOff = (512 - 240);
    }
    if (vOff > (256 - 160)) {
        vOff = (256 - 160);
    }


    if ((!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9)))) && (!(~(oldButtons) & ((1<<8))) && (~(buttons) & ((1<<8))))) {
        player.x = princess.x;
        player.y = princess.y;
    }
}

void updateEnemies() {
    int enemy1rightX = (enemy1.x >> 3) + enemy1.width - 1;
    int enemy1leftX = enemy1.x >> 3;
    int enemy1topY = enemy1.y >> 3;
    int enemy1bottomY = (enemy1.y >> 3) + enemy1.height - 1;

    if (enemy1.x < (player.x << 3)) {
        enemy1.x += enemy1.xVel;
        enemy1.direction = RIGHT;
        enemy1.isAnimating = 1;
    } else if (enemy1.x > (player.x << 3)) {
        enemy1.x -= enemy1.xVel;
        enemy1.direction = LEFT;
        enemy1.isAnimating = 1;
    }

    if (enemy1.y < (player.y << 3)) {

            enemy1.y += enemy1.yVel;
            enemy1.direction = DOWN;
            enemy1.isAnimating = 1;

    } else if (enemy1.y > (player.y << 3)) {

            enemy1.y -= enemy1.yVel;
            enemy1.direction = UP;
            enemy1.isAnimating = 1;

    }


    if (enemy1.isAnimating) {
        enemy1.timeUntilNextFrame--;
        if (enemy1.timeUntilNextFrame == 0) {
            enemy1.currentFrame = (player.currentFrame + 1) % player.numFrames;
            enemy1.timeUntilNextFrame = 10;
        }
    } else {
        enemy1.currentFrame = 0;
        enemy1.timeUntilNextFrame = 10;
    }
}

void updateFood() {
    if (collision(player.x, player.y, player.width, player.height, food.x, food.y, food.width, food.height)) {
        if (lives < 3) {
            lives++;
        }
        food.x = 240;
        food.y = 180;
    }
}

void updatePrincess() {
    if (collision(player.x, player.y, player.width, player.height, princess.x, princess.y, princess.width, princess.height)) {
        if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
            goToWin();
        }
    }
}

void updateLifeNum() {
    if (lives == 3) {
        lifeDisplayTileIndex = 10;
    }
    if (lives == 2) {
        lifeDisplayTileIndex = 9;
    }
    if (lives == 1) {
        lifeDisplayTileIndex = 8;
    }
}

void updateScoreNum() {
    if (score == 0) {
        scoreDisplayTileIndex = 7;
    }
    if (score == 1) {
        scoreDisplayTileIndex = 8;
    }
    if (score == 2) {
        scoreDisplayTileIndex = 9;
    }
    if (score == 3) {
        scoreDisplayTileIndex = 10;
    }
    if (score == 4) {
        scoreDisplayTileIndex = 11;
    }
    if (score == 5) {
        scoreDisplayTileIndex = 12;
    }
}

void checkPlayerEnemyCollision() {
    if (collision(player.x, player.y, player.width, player.height, enemy1.x >> 3, enemy1.y >> 3, enemy1.width, enemy1.height)) {
        if (player.x > enemy1.x) {
            player.x -= 10;
            lives--;
        }
        if (player.x < enemy1.x) {
            player.x += 10;
            lives--;
        }

        ((u16 *)0x5000200)[10] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
    }



}
