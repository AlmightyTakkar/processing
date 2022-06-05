float angle = 0;
float zoom = 1;
final static float inc = .05;

//A
int ax1 =-420;
int ax2 =-320;
int ax3 =-220;

int asx1 =-360;
int asx2 =-320;
int asx3 =-280;

int aqx1 =-390;
int aqx2 =-365;
int aqx3 =-275;
int aqx4 =-250;

int ay1 =100;
int ay2 =-100;

int asy1 =30;
int asy2 =-50;
int asy3 =30;

int aqy1 = 100;
int aqy2 = 50;

//W
int wx1 = -100;
int wx2 = -200;
int wx3 = 200;
int wx4 = 100;

int wsx11 = -125;
int wsx12 = -75;
int wsx13 = -25;

int wsx21 = -50;
int wsx22 = 0;
int wsx23 = 50;

int wsx31 = 25;
int wsx32 = 75;
int wsx33 = 125;

int wy1 = 0;
int wy2 = 0;

//P
int px1 = 220;

int px2 = 245;
int py = -25;

int pex1 = 290;
int pey1 = -50;



void setup(){ 
size(1280, 720);
smooth();
}
void draw(){
background(#CEA5FF);
noStroke();
pushMatrix();
translate(640,360);
if(mousePressed) {
    if(mouseButton == LEFT)   zoom += inc;
    else if(mouseButton == RIGHT)  zoom -= inc;
}
scale(zoom);
rotate(angle);
fill(#752ECA);
//A
triangle(ax1,ay1,ax2,ay2,ax3,ay1);
//W
quad(wx1,ay1,wx2,ay2,wx3,ay2,wx4,ay1);
//P
rect(px1,ay2,25,200);
rect(px2,ay2,45,25);
rect(px2,py,45,25);
arc(pex1,pey1,100,100,HALF_PI*3, PI*2.5);

fill(#CEA5FF);
//A
triangle(asx1,asy1,asx2,asy2,asx3,asy3);
quad(aqx1,aqy1,aqx2,aqy2,aqx3,aqy2,aqx4,aqy1);
//W
triangle(wsx11,ay2,wsx12,wy1,wsx13,ay2);
triangle(wsx21,ay1,wsx22,wy2,wsx23,ay1);
triangle(wsx31,ay2,wsx32,wy1,wsx33,ay2);
//P
arc(pex1,pey1,50,50,HALF_PI*3, PI*2.5);
popMatrix();
}

void keyPressed() {
  if(key=='e') {
    angle+=radians(1);
  }
  if(key=='q') {
    angle-=radians(1);
  }
  if(key==' ') {
    angle = 0;
  }
  
  if(key=='s') {
    ay1 += 10;
    ay2 += 10;
    
    asy1 += 10;
    asy2 += 10;
    asy3 += 10;
    
    aqy1 += 10;
    aqy2 += 10;
    
    wy1 += 10;
    wy2 += 10;
    
    py += 10;
    
    pey1 += 10;
  }
  
  if(key=='w') {
    ay1 -= 10;
    ay2 -= 10;
    
    asy1 -= 10;
    asy2 -= 10;
    asy3 -= 10;
    
    aqy1 -= 10;
    aqy2 -= 10;
    
    wy1 -= 10;
    wy2 -= 10;
    
    py -= 10;
    
    pey1 -= 10;
  }

  if(key=='d') {
        ax1 += 10;
        ax2 += 10;
        ax3 += 10;

        asx1 += 10;
        asx2 += 10;
        asx3 += 10;

        aqx1 += 10;
        aqx2 += 10;
        aqx3 += 10;
        aqx4 += 10;

        wx1 += 10;
        wx2 += 10;
        wx3 += 10;
        wx4 += 10;

        wsx11 += 10;
        wsx12 += 10;
        wsx13 += 10;

        wsx21 += 10;
        wsx22 += 10;
        wsx23 += 10;

        wsx31 += 10;
        wsx32 += 10;
        wsx33 += 10;

        px1 += 10;

        px2 += 10;

        pex1 += 10;
    }
    
  if(key=='a') {
        ax1 -= 10;
        ax2 -= 10;
        ax3 -= 10;

        asx1 -= 10;
        asx2 -= 10;
        asx3 -= 10;

        aqx1 -= 10;
        aqx2 -= 10;
        aqx3 -= 10;
        aqx4 -= 10;

        wx1 -= 10;
        wx2 -= 10;
        wx3 -= 10;
        wx4 -= 10;

        wsx11 -= 10;
        wsx12 -= 10;
        wsx13 -= 10;

        wsx21 -= 10;
        wsx22 -= 10;
        wsx23 -= 10;

        wsx31 -= 10;
        wsx32 -= 10;
        wsx33 -= 10;

        px1 -= 10;

        px2 -= 10;

        pex1 -= 10;
    }
  
  if(key==CODED) {
    if(keyCode==UP) {
        ax1 += 10;
        ax2 += 10;
        ax3 += 10;

        asx1 += 10;
        asx2 += 10;
        asx3 += 10;

        aqx1 += 10;
        aqx2 += 10;
        aqx3 += 10;
        aqx4 += 10;

        wx1 += 10;
        wx2 += 10;
        wx3 += 10;
        wx4 += 10;

        wsx11 += 10;
        wsx12 += 10;
        wsx13 += 10;

        wsx21 += 10;
        wsx22 += 10;
        wsx23 += 10;

        wsx31 += 10;
        wsx32 += 10;
        wsx33 += 10;

        px1 += 10;

        px2 += 10;

        pex1 += 10;
        
        ay1 -= 10;
        ay2 -= 10;
        
        asy1 -= 10;
        asy2 -= 10;
        asy3 -= 10;
        
        aqy1 -= 10;
        aqy2 -= 10;
        
        wy1 -= 10;
        wy2 -= 10;
        
        py -= 10;
        
        pey1 -= 10;
    }
    
    if(keyCode==DOWN) {
        ax1 -= 10;
        ax2 -= 10;
        ax3 -= 10;

        asx1 -= 10;
        asx2 -= 10;
        asx3 -= 10;

        aqx1 -= 10;
        aqx2 -= 10;
        aqx3 -= 10;
        aqx4 -= 10;

        wx1 -= 10;
        wx2 -= 10;
        wx3 -= 10;
        wx4 -= 10;

        wsx11 -= 10;
        wsx12 -= 10;
        wsx13 -= 10;

        wsx21 -= 10;
        wsx22 -= 10;
        wsx23 -= 10;

        wsx31 -= 10;
        wsx32 -= 10;
        wsx33 -= 10;

        px1 -= 10;

        px2 -= 10;

        pex1 -= 10;
        
        ay1 += 10;
        ay2 += 10;
        
        asy1 += 10;
        asy2 += 10;
        asy3 += 10;
        
        aqy1 += 10;
        aqy2 += 10;
        
        wy1 += 10;
        wy2 += 10;
        
        py += 10;
        
        pey1 += 10;
    }
    
    if(keyCode==RIGHT) {
        ax1 += 10;
        ax2 += 10;
        ax3 += 10;

        asx1 += 10;
        asx2 += 10;
        asx3 += 10;

        aqx1 += 10;
        aqx2 += 10;
        aqx3 += 10;
        aqx4 += 10;

        wx1 += 10;
        wx2 += 10;
        wx3 += 10;
        wx4 += 10;

        wsx11 += 10;
        wsx12 += 10;
        wsx13 += 10;

        wsx21 += 10;
        wsx22 += 10;
        wsx23 += 10;

        wsx31 += 10;
        wsx32 += 10;
        wsx33 += 10;

        px1 += 10;

        px2 += 10;

        pex1 += 10;
        
        ay1 += 10;
        ay2 += 10;
        
        asy1 += 10;
        asy2 += 10;
        asy3 += 10;
        
        aqy1 += 10;
        aqy2 += 10;
        
        wy1 += 10;
        wy2 += 10;
        
        py += 10;
        
        pey1 += 10;
    }
    
        if(keyCode==LEFT) {
        ax1 -= 10;
        ax2 -= 10;
        ax3 -= 10;

        asx1 -= 10;
        asx2 -= 10;
        asx3 -= 10;

        aqx1 -= 10;
        aqx2 -= 10;
        aqx3 -= 10;
        aqx4 -= 10;

        wx1 -= 10;
        wx2 -= 10;
        wx3 -= 10;
        wx4 -= 10;

        wsx11 -= 10;
        wsx12 -= 10;
        wsx13 -= 10;

        wsx21 -= 10;
        wsx22 -= 10;
        wsx23 -= 10;

        wsx31 -= 10;
        wsx32 -= 10;
        wsx33 -= 10;

        px1 -= 10;

        px2 -= 10;

        pex1 -= 10;
        
        ay1 -= 10;
        ay2 -= 10;
        
        asy1 -= 10;
        asy2 -= 10;
        asy3 -= 10;
        
        aqy1 -= 10;
        aqy2 -= 10;
        
        wy1 -= 10;
        wy2 -= 10;
        
        py -= 10;
        
        pey1 -= 10;
    }
  }
}
