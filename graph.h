#include <stdlib.h>
#include <graphics.h>

int s=5; 
int c_x=40, c_y=40;



void move(int type, int amt)
{

int i;

switch(type)
{
case 0: // case for left
         for( i=1; i<amt;i+=s)
         {
         c_x = c_x - s;
         
         if(c_x>25)
          {
            cleardevice();
            
            circle(c_x,c_y,20);
            delay(100); 
             }

         else
              {
                  c_x = 25;
                  break;
              }
           }
         cleardevice(); 
         
         circle(c_x,c_y,20);
         break;

case 1: 
        // case for right
         for( i=1; i<amt;i+=s)
         {
         c_x = c_x + s;
         
         if(c_x<600)
          {
            cleardevice();
         
            circle(c_x,c_y,20);
            delay(100); 
             }

         else
              {
                 c_x = 600;
                 break;
              }
           }
         cleardevice();
         
         circle(c_x,c_y,20);

        break;

case 2: // case for top
          for( i=1; i<amt;i+=s)
         {
         c_y = c_y - s;
         
         if(c_y>25)
          {
            cleardevice();
         
            circle(c_x,c_y,20);
            delay(100); 
             }

         else
              {
                 c_y = 25;
                 break;
              }
           } 

         cleardevice();
         
         circle(c_x,c_y,20);

          break;

case 3: 
        // case for down
          for( i=1; i<amt;i+=s)
         {
         c_y = c_y + s;
         
         if(c_y<458)
          {
            cleardevice();
         
            circle(c_x,c_y,20);
            delay(100); 
             }

         else
              {
                 c_y = 458;
                 break;
              }
           } 

         cleardevice();
         
         circle(c_x,c_y,20);

          break;

}
}
void init()
{
	int gd = DETECT,gm;
    initgraph(&gd,&gm,NULL);    
}
