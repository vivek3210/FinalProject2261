#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "tilemapstart.h"
#include "tilemappaused.h"
#include "tilemaplvlone.h"
#include "tilemapwin.h"
#include "tilemaplose.h"
#include "tilemapinstructions.h"
#include "tilemapparallaxbackground.h"
#include "tileset.h"
#include "spritesheet.h"
#include "game.h"
#include "goldenaxestart.h"
#include "instructionsgoldenaxe.h"


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
        buttons = REG_BUTTONS;

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
        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;
        REG_BG1HOFF = hOff / 2;
        REG_BG1VOFF = vOff / 2;
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
}

void initialize() {
    mgba_open();
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(10) | BG_SIZE_SMALL | BG_4BPP | 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_SIZE_WIDE | BG_4BPP | 1 ;

    goToStart();
    
}

void goToStart() {
    hOff = 0;
    vOff = 0;
    // DMANow(3, &tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    // DMANow(3, &tilemapstartMap, &SCREENBLOCK[8], tilemaplvloneLen / 2);
    // DMANow(3, &tilesetPal, BG_PALETTE, tilesetPalLen / 2);

    DMANow(3, goldenaxestartPal, BG_PALETTE, goldenaxestartPalLen / 2);
    DMANow(3, goldenaxestartTiles, &CHARBLOCK[0], goldenaxestartTilesLen / 2);
    DMANow(3, goldenaxestartMap, &SCREENBLOCK[8], goldenaxestartMapLen / 2);
    state = START;
}
void start() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGameOne();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}
void goToInstructions() {
    REG_DISPCTL = BG_ENABLE(0);
    hOff = 0;
    vOff = 0;
    // DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    // DMANow(3, tilemapinstructionsMap, &SCREENBLOCK[8], tilemapinstructionsLen / 2);
    // DMANow(3, tilesetPal, BG_PALETTE, tilesetPalLen / 2);

    DMANow(3, instructionsgoldenaxePal, BG_PALETTE, instructionsgoldenaxePalLen / 2);
    DMANow(3, instructionsgoldenaxeTiles, &CHARBLOCK[0], instructionsgoldenaxeTilesLen / 2);
    DMANow(3, instructionsgoldenaxeMap, &SCREENBLOCK[8], instructionsgoldenaxeMapLen / 2);
    state = INSTRUCTIONS;
}
void instructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
void goToPause() {
    hOff = 0;
    vOff = 0;
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    DMANow(3, tilemappausedMap, &SCREENBLOCK[8], tilemappausedLen / 2);
    DMANow(3, tilesetPal, BG_PALETTE, tilesetPalLen / 2);
    state = PAUSE;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGameOne();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}
void goToGameOne() {

    //parallax background
    REG_DISPCTL = BG_ENABLE(1) | BG_ENABLE(0) | SPRITE_ENABLE;
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    DMANow(3, tilemapparallaxbackgroundMap, &SCREENBLOCK[10], tilemapparallaxbackgroundLen / 2);
    DMANow(3, tilesetPal, BG_PALETTE, tilesetPalLen / 2);

    //background
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    DMANow(3, tilemaplvloneMap, &SCREENBLOCK[8], tilemaplvloneLen / 2);
    DMANow(3, tilesetPal, BG_PALETTE, tilesetPalLen / 2);

    //sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 4);
    DMANow(3, spritesheetPal, SPRITE_PAL, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();


    state = GAMEONE;
}
void gameOne() {
    updateGame();
    drawGame();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (lives <= 0) {
        goToLose();
    }
    if (score >= 5) {
        goToWin();
    }
}
void goToGameTwo() {
    state = GAMETWO;
}
void gameTwo() {

}
void goToWin() {
    hOff = 0;
    vOff = 0;
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    DMANow(3, tilemapwinMap, &SCREENBLOCK[8], tilemapwinLen / 2);
    DMANow(3, tilesetPal, BG_PALETTE, tilesetPalLen / 2);
    state = WIN;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}
void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
void goToLose() {
    hOff = 0;
    vOff = 0;
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen / 2);
    DMANow(3, tilemaploseMap, &SCREENBLOCK[8], tilemaploseLen / 2);
    DMANow(3, tilesetPal, BG_PALETTE, tilesetPalLen / 2);
    state = LOSE;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
} 