%{
    #include<stdio.h>
%}
DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf("integer");}
{DIGIT}*?\.{DIGIT}* {ECHO;printf("float");}
%%
int yywrap(){return 0;}
int main()
{
    yylex();
    return 0;
}