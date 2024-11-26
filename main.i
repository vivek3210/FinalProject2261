# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"

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
# 3 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
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
# 5 "main.c" 2
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
# 6 "main.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void setupSoundInterrupts();
void interruptHandler();

void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 52 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 7 "main.c" 2


# 1 "tilemapstart.h" 1







extern const unsigned short tilemapstartMap[1024];
# 10 "main.c" 2
# 1 "tilemappaused.h" 1







extern const unsigned short tilemappausedMap[1024];
# 11 "main.c" 2
# 1 "tilemaplvlone.h" 1







extern const unsigned short tilemaplvloneMap[2048];
# 12 "main.c" 2
# 1 "tilemapwin.h" 1







extern const unsigned short tilemapwinMap[1024];
# 13 "main.c" 2
# 1 "tilemaplose.h" 1







extern const unsigned short tilemaploseMap[1024];
# 14 "main.c" 2
# 1 "tilemapinstructions.h" 1







extern const unsigned short tilemapinstructionsMap[1024];
# 15 "main.c" 2
# 1 "tilemapparallaxbackground.h" 1







extern const unsigned short tilemapparallaxbackgroundMap[1024];
# 16 "main.c" 2
# 1 "tileset.h" 1
# 21 "tileset.h"
extern const unsigned short tilesetTiles[2912];


extern const unsigned short tilesetPal[256];
# 17 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 18 "main.c" 2
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
# 19 "main.c" 2
# 1 "goldenaxestart.h" 1
# 22 "goldenaxestart.h"
extern const unsigned short goldenaxestartTiles[6576];


extern const unsigned short goldenaxestartMap[1024];


extern const unsigned short goldenaxestartPal[256];
# 20 "main.c" 2
# 1 "instructionsgoldenaxe.h" 1
# 22 "instructionsgoldenaxe.h"
extern const unsigned short instructionsgoldenaxeTiles[1328];


extern const unsigned short instructionsgoldenaxeMap[1024];


extern const unsigned short instructionsgoldenaxePal[256];
# 21 "main.c" 2
# 1 "wingoldenaxe.h" 1
# 22 "wingoldenaxe.h"
extern const unsigned short wingoldenaxeTiles[1456];


extern const unsigned short wingoldenaxeMap[1024];


extern const unsigned short wingoldenaxePal[256];
# 22 "main.c" 2
# 1 "losegoldenaxe.h" 1
# 22 "losegoldenaxe.h"
extern const unsigned short losegoldenaxeTiles[1488];


extern const unsigned short losegoldenaxeMap[1024];


extern const unsigned short losegoldenaxePal[256];
# 23 "main.c" 2


# 1 "goldenaxestartmusic.h" 1


extern const unsigned int goldenaxestartmusic_sampleRate;
extern const unsigned int goldenaxestartmusic_length;
extern const signed char goldenaxestartmusic_data[];
# 26 "main.c" 2
# 1 "gameoversoundeffect.h" 1


extern const unsigned int gameoversoundeffect_sampleRate;
extern const unsigned int gameoversoundeffect_length;
extern const signed char gameoversoundeffect_data[];
# 27 "main.c" 2


void initialize();
void goToStart();
void start();
void goToPause();
void pause();
void goToGameOne();
void gameOne();
void goToGameTwo();
void gameTwo();
void goToWin();
void win();
void goToLose();
void lose();
void goToInstructions();
void instructions();

enum {START, PAUSE, GAMEONE, GAMETWO, WIN, LOSE, INSTRUCTIONS};
int state;
int whichGame;
int hOff;
int vOff;

unsigned short buttons;
unsigned short oldButtons;

int main() {
    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
            case START:
                start();
                break;
            case PAUSE:
                pause();
                break;
            case GAMEONE:
                gameOne();
                break;
            case GAMETWO:
                gameTwo();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
        }
        (*(volatile unsigned short*) 0x04000010) = hOff;
        (*(volatile unsigned short*) 0x04000012) = vOff;
        (*(volatile unsigned short*) 0x04000014) = hOff / 2;
        (*(volatile unsigned short*) 0x04000016) = vOff / 2;
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    }
}

void initialize() {
    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((8) << 8) | (1 << 14) | (0 << 7);


    setupSounds();
    setupSoundInterrupts();

    goToStart();

}

void goToStart() {
    hOff = 0;
    vOff = 0;




    DMANow(3, goldenaxestartPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, goldenaxestartTiles, &((CB*) 0x6000000)[0], 13152 / 2);
    DMANow(3, goldenaxestartMap, &((SB*) 0x6000000)[8], 2048 / 2);
    state = START;
}
void start() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToGameOne();
        initGame();
    }
    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        goToInstructions();
    }
}
void goToInstructions() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (0 % 4)));
    hOff = 0;
    vOff = 0;




    DMANow(3, instructionsgoldenaxePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, instructionsgoldenaxeTiles, &((CB*) 0x6000000)[0], 2656 / 2);
    DMANow(3, instructionsgoldenaxeMap, &((SB*) 0x6000000)[8], 2048 / 2);
    state = INSTRUCTIONS;
}
void instructions() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
    }
}
void goToPause() {
    hOff = 0;
    vOff = 0;
    DMANow(3, tilesetTiles, &((CB*) 0x6000000)[0], 5824 / 2);
    DMANow(3, tilemappausedMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, tilesetPal, ((unsigned short *)0x5000000), 512 / 2);
    state = PAUSE;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}
void pause() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToGameOne();
    }
    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        goToStart();
    }
}
void goToGameOne() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);
    playSoundA(goldenaxestartmusic_data, goldenaxestartmusic_length, 1);

    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((8) << 8) | (1 << 14) | (0 << 7) | 1;
    DMANow(3, &tilesetPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, &tilesetTiles, &((CB*) 0x6000000)[0], 5824 / 2);
    DMANow(3, &tilemaplvloneMap, &((SB*) 0x6000000)[8], (4096) / 2);



    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((10) << 8) | (0 << 7) | 0;

    DMANow(3, tilemapparallaxbackgroundMap, &((SB*) 0x6000000)[10], (2048) / 2);



    DMANow(3, spritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 4);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    waitForVBlank();


    state = GAMEONE;
}
void gameOne() {
    updateGame();
    drawGame();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        stopSounds();
        goToPause();
    }
    if (lives <= 0) {
        stopSounds();
        goToLose();
    }
    if (score >= 5) {
        stopSounds();
        goToWin();
    }
}
void goToGameTwo() {
    state = GAMETWO;
}
void gameTwo() {

}
void goToWin() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (0 % 4)));
    hOff = 0;
    vOff = 0;




    DMANow(3, wingoldenaxePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, wingoldenaxeTiles, &((CB*) 0x6000000)[0], 2912 / 2);
    DMANow(3, wingoldenaxeMap, &((SB*) 0x6000000)[8], 2048 / 2);
    state = WIN;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}
void win() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
    }
}
void goToLose() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (0 % 4)));
    playSoundB(gameoversoundeffect_data, gameoversoundeffect_length, 0);
    hOff = 0;
    vOff = 0;



    DMANow(3, losegoldenaxePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, losegoldenaxeTiles, &((CB*) 0x6000000)[0], 2976 / 2);
    DMANow(3, losegoldenaxeMap, &((SB*) 0x6000000)[8], 2048 / 2);

    state = LOSE;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}
void lose() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
    }
}
