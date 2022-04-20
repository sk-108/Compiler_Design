%{
#include<stdio.h>

%}
DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf(" Integer");}
{DIGIT}*?\.{DIGIT}* {ECHO;printf(" Float ");}
%%
int yywrap(){ return 1;}
int main()
{
 yylex();
 return 0;
}
