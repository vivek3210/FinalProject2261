#define MAPWIDTH 512
#define MAPHEIGHT 256

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