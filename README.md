# yacc_motion

to make:

yacc -d semantic.y

lex lexeme.l

cc -g lex.yy.c y.tab.c -lgraph -lm -o xyz

./xyz <program

Written by: Abhay
