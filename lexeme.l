%{
#include <stdio.h>
#include "y.tab.h"
%}

%%

[ \n\t]			; 

"<!motion"		{ return M_STRT;}
"-->"			{ return M_END; }

"left" 			{return LEFT;}
"right"			{return RIGHT;}
"top"			{return TOP;}
"down"			{return DOWN;}

"speed" 		{return SPEED; }

[1-9][0-9]*			{ yylval.num= atoi(yytext); return number;}

.			yyerror("Syntax Error Occured");

%%

int yywrap(void)
{
    return 1;
}


int main(int argc, char *argv[])
{
    
    yyin = fopen(argv[1], "r");
    yyparse();
    
}
