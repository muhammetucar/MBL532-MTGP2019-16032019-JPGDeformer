PImage resim;
color[][] renk = new color [534][534];
color[][] renkM = new color [534][534];
color[][] renkCCW90 = new color [534][534]; //CCW - Counter Clock Wise - Saat Yönünün Tersi demek.

void setup()
{
  background(255);
  size(534, 534);

  resim = loadImage("bugsy.JPG");

  for (int i=0; i<534; i++)
  {
    for (int j=0; j<534; j++)
    {
      renk[i][j]=resim.get(i, j);
    }
  }
  for (int i=0; i<534; i++)
  {
    for (int j=0; j<534; j++)
    {
      renkM[i][j]=renk[i][533-j];
    }
  }
  for (int i=0; i<534; i++)
  {
    for (int j=0; j<534; j++)
    {
      renkCCW90[i][j]=renk[j][i];
    }
  }
}

void draw()
{
  //image(resim, 0, 0, 300, 300);

  /* for ( int  j = 0; j<2; j++)
   {
   for (int i =0; i<2; i++)
   {
   image(resim, width/4 * i, height/4 * j, width/4, height/16);
   }
   } */
  int bolX= mouseX;
  int bolY= mouseY;
  for ( int  j = 0; j<bolY; j++)
  {
    for (int i =0; i<bolX; i++)
    {
      noStroke();

      if (i % 3 == 0)
      {
        fill(red(renk[i*width/bolX][j*height/bolY]), green(renk[i*width/bolX][j*height/bolY]), blue(renk[i*width/bolX] [j*height/bolY]) );
        //rect(width/bolX* i, height/bolY*j, width /bolX, height/bolY);
      } else if ( i % 3 == 1)
      {
        fill(red(renkM[i*width/bolX][j*height/bolY]), green(renkM[i*width/bolX][j*height/bolY]), blue(renkM[i*width/bolX] [j*height/bolY]) );
        //rect(width/bolX* i, height/bolY*j, width /bolX, height/bolY);
      } else if (i % 3 == 2)
      {
        fill(red(renkCCW90[i*width/bolX][j*height/bolY]), green(renkCCW90[i*width/bolX][j*height/bolY]), blue(renkCCW90[i*width/bolX] [j*height/bolY]) );
      }
      rect(width/bolX* i, height/bolY*j, width /bolX, height/bolY);
      /*fill(red(renkCCW90[i*width/bolX][j*height/bolY]),
       green(renkCCW90[i*width/bolX][j*height/bolY]), blue(renkCCW90[i*width/bolX] [j*height/bolY]) );
       rect(width/bolX* i, height/bolY*j, width /bolX, height/bolY);*/
    }
  }
}
