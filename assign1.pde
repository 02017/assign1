/* please implement your assign1 code in this file. */
PImage enemy;
PImage bg1;
PImage bg2;
PImage bg3;
PImage fighter;
PImage hp;
PImage treasure;
int enemyX, enemyY, bloodL, treasureX, treasureY, edge, bg2X, bg2Y, bg1X, bg1Y;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  enemy = loadImage("img/enemy.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  bloodL = floor(random(201));
  treasureX = floor(random(5,506));
  treasureY = floor(random(40,441));
  enemyY = floor(random(40,441));
  enemyX = 0;
  bg2X = 0;
}

void draw() {
  // your code
  image(bg2,bg2X,0);
  image(bg1,bg2X-640,0);
  image(fighter,580,240);
  image(treasure,treasureX,treasureY);
  image(hp,5,5);
  
  rectMode(CORNERS);
  fill(220,20,20);
  rect(10,10,10+bloodL,25,5);
  image(enemy,enemyX,enemyY);

  if (enemyX > 640) {
  enemyX = 0;
  }
  enemyX += 5;
  
  if (bg2X > 640) {
  bg2X = 0;
  bg3 = bg1;
  bg1 = bg2;
  bg2 = bg3;
  }  
  bg2X += 1;
}
