/*
    YML 
    Designed by: Abhay Raj Malhotra - 1215
                 Smarth Mehta - 1525 
                 Simranpreet Kaur - 1203 
                 Jasmine Kaur - 1258 
                 Ruby Sharma -
*/

/* Code has 
0 -> left
1 -> right
2 -> top
3 ->down
4 -> speed
*/

%{
#include <stdio.h>
#include "datastruct.h"
#include <malloc.h>
#include <stdlib.h>
#include "graph.h"
void listing();
void gamestrt();
//void status(nodes* temp);

%}

%union
{ 
struct nodes *node;  int num;
}

%type <node> run
%type <node> start
%token <num> number 

%token LEFT, RIGHT, TOP, DOWN, M_STRT, M_END, SPEED

%%

run: M_STRT number number start M_END {$$ = $4;init(); c_x=$2; c_y=$3;  listing($$); delay(10000);};

start: LEFT number start 
       {
        
        nodes *n = (nodes*)malloc(sizeof(nodes)); 
        n->next = $3;
        n -> amount = $2; 
        n->dir =0; 
        $$ = n;      
       }
 
      |
      
       RIGHT number start
       {
        nodes *n = (nodes*)malloc(sizeof(nodes)); 
        n->next = $3;
        n -> amount = $2; 
        n->dir =1; 
        $$ = n;    
       }
      |
     
      TOP number start
      {
        nodes *n = (nodes*)malloc(sizeof(nodes)); 
        n->next = $3;
        n -> amount = $2; 
        n->dir =2; 
        $$ = n;     
      }
      |
      DOWN number start 
      {
        nodes *n = (nodes*)malloc(sizeof(nodes)); 
        n->next = $3;
        n -> amount = $2; 
        n->dir =3; 
        $$ = n;    
      }
      | 
      SPEED number 
       {
        s = $2;
        $$ = NULL;
       }
      |
      {
       $$=NULL;
      };  
 

%%

yyerror(char *s)
{
printf("%s\n",s);
exit(100);
}

/*
void status()
{
printf("Yes, it compiled");
}
*/

void listing(nodes* temp)
{
while(temp)
{
move(temp->dir, temp->amount);

temp = temp->next;
}
}

void gamestrt()
{

}
