#include "game.h"
#include "sprites.h"
#include "gba.h"
#include "print.h"
#include "sprites.h"
#include "mode0.h"

SPRITE player;
SPRITE enemy1;
SPRITE enemy2;
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
    updateScoreNum();
    updateLifeNum();
    checkPlayerEnemyCollision();
}

void drawGame() {
    drawPlayer();
    drawEnemies();
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
    //enemy1.xVel = (int)(.5 * 8); 
    //enemy1.yVel = (int)(.5 * 8); 
    enemy1.xVel = 0;
    enemy1.yVel = 0;
    enemy1.direction = DOWN;
    enemy1.oamIndex = 1;

    enemy1.x = 112 << 3; // Fixed-point encoding
    enemy1.y = 73 << 3;  // Fixed-point encoding
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
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_SMALL; 
    shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 2, player.direction * 2) | ATTR2_PRIORITY(0);
}

void drawEnemies() {
    shadowOAM[enemy1.oamIndex].attr0 = ATTR0_Y((enemy1.y >> 3) - vOff) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[enemy1.oamIndex].attr1 = ATTR1_X((enemy1.x >> 3) - hOff) | ATTR1_SMALL; 
    shadowOAM[enemy1.oamIndex].attr2 = ATTR2_TILEID(enemy1.currentFrame * 2, 8 + enemy1.direction * 2) | ATTR2_PRIORITY(0);

    shadowOAM[enemy2.oamIndex].attr0 = ATTR0_Y(enemy2.y) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[enemy2.oamIndex].attr1 = ATTR1_X(enemy2.x) | ATTR1_SMALL; 
    shadowOAM[enemy2.oamIndex].attr2 = ATTR2_TILEID(enemy2.currentFrame * 2, 16 + enemy2.direction * 2) | ATTR2_PRIORITY(0);
}

void drawScore() {
    shadowOAM[scoreDisplay.oamIndex].attr0 = ATTR0_Y(scoreDisplay.y) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[scoreDisplay.oamIndex].attr1 = ATTR1_X(scoreDisplay.x) | ATTR1_SMALL;
    shadowOAM[scoreDisplay.oamIndex].attr2 = ATTR2_TILEID(8, 1) | ATTR2_PRIORITY(0) | ATTR2_PALROW(2);
}

void drawLives() {
    shadowOAM[lifeDisplay.oamIndex].attr0 = ATTR0_Y(lifeDisplay.y) | ATTR0_WIDE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[lifeDisplay.oamIndex].attr1 = ATTR1_X(lifeDisplay.x) | ATTR1_TINY;
    shadowOAM[lifeDisplay.oamIndex].attr2 = ATTR2_TILEID(8, 2) | ATTR2_PRIORITY(0) | ATTR2_PALROW(2);
}

void drawScoreNum() {
    shadowOAM[scoreNum.oamIndex].attr0 = ATTR0_Y(scoreNum.y) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[scoreNum.oamIndex].attr1 = ATTR1_X(scoreNum.x) | ATTR1_TINY;
    shadowOAM[scoreNum.oamIndex].attr2 = ATTR2_TILEID(scoreDisplayTileIndex, 4) | ATTR2_PRIORITY(0) | ATTR2_PALROW(2);
}

void drawLifeNum() {
    shadowOAM[lifeNum.oamIndex].attr0 = ATTR0_Y(lifeNum.y) | ATTR0_SQUARE | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[lifeNum.oamIndex].attr1 = ATTR1_X(lifeNum.x) | ATTR1_TINY;
    shadowOAM[lifeNum.oamIndex].attr2 = ATTR2_TILEID(lifeDisplayTileIndex, 4) | ATTR2_PRIORITY(0) | ATTR2_PALROW(2);
}

void updatePlayer() {
    player.isAnimating = 0;

    int rightX = player.x + player.width - 1;
    int leftX = player.x;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    if (BUTTON_HELD(BUTTON_UP)) {
        player.y -= player.yVel;      
        player.isAnimating = 1;
        player.direction = UP;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.y += player.yVel;
        player.isAnimating = 1;
        player.direction = DOWN;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.x -= player.xVel;
        player.isAnimating = 1;
        player.direction = LEFT;
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.x += player.xVel;
        player.isAnimating = 1;
        player.direction = RIGHT;
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        int attackRadius = 5;

        if (collision(player.x - attackRadius, player.y - attackRadius, player.width + 2 * attackRadius, player.height + 2 * attackRadius, enemy1.x >> 3, enemy1.y >> 3, enemy1.width, enemy1.height)) {
            score++;
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

    //Complex Movement
    hOff = player.x - (SCREENWIDTH - player.width) / 2;
    vOff = 0;
    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x + player.width > MAPWIDTH) {
        player.x = MAPWIDTH - player.width;
    }
    if (player.y + player.height > MAPHEIGHT) {
        player.y = MAPHEIGHT - player.height;
    }
    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (MAPWIDTH - SCREENWIDTH)) {
        hOff = (MAPWIDTH - SCREENWIDTH);
    }
    if (vOff > (MAPHEIGHT - SCREENHEIGHT)) {
        vOff = (MAPHEIGHT - SCREENHEIGHT);
    }
}

void updateEnemies() {
    int enemy1rightX = (enemy1.x >> 3) + enemy1.width - 1;
    int enemy1leftX = enemy1.x >> 3;
    int enemy1topY = enemy1.y >> 3;
    int enemy1bottomY = (enemy1.y >> 3) + enemy1.height - 1;
    // Enemy 1 movement
    if (enemy1.x < (player.x << 3)) {
        enemy1.x += enemy1.xVel;  // Move right towards player
        enemy1.direction = RIGHT;
        enemy1.isAnimating = 1;
    } else if (enemy1.x > (player.x << 3)) {
        enemy1.x -= enemy1.xVel;  // Move left towards player
        enemy1.direction = LEFT;
        enemy1.isAnimating = 1;
    }

    if (enemy1.y < (player.y << 3)) {
        //if ((enemy1.y >> 3) + enemy1.height - 1 < 160) {
            enemy1.y += enemy1.yVel;  // Move down towards player
            enemy1.direction = DOWN;
            enemy1.isAnimating = 1;
        //}
    } else if (enemy1.y > (player.y << 3)) {
        //if ((enemy1.y >> 3) > 0) {
            enemy1.y -= enemy1.yVel;  // Move up towards player
            enemy1.direction = UP;
            enemy1.isAnimating = 1;
        //}
    }

    // Update animations if needed
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
        if (player.x < enemy1.x) {
            player.x += 10;
            lives--;
        }
        if (player.x > enemy1.x) {
            player.x -= 10;
            lives--;
        }
    }
    if (collision(player.x, player.y, player.width, player.height, enemy2.x, enemy2.y, enemy2.width, enemy2.height)) {
        lives--;
    }
}
