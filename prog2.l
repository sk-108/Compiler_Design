%{
    #include<stdio.h>
    int count = 0;
%}
op [+-*/]
letter [a-zA-Z]
digitt [0-9]
id {letter}*|({letter}{digitt})+
notid ({digitt}{letter})+
%%
[\t\n]+
("int")|("float")|("char")|("case")|("default")|("if")|("for")|("printf") {printf("%s is a keyword ",yytext);}
{id} {printf("%s is an identifier \n ",yytext);count++;}
{notid} {printf("%s is not an identifier \n",yytext);}
%%
int yywrap(){return 1;}
int main()
{
    yylex();
    printf("total identifier %d ",count);
    return 0;
}