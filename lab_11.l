%{
#include<stdio.h>
%}
%%
[+-]?[0-9]"."[0-9]+ {printf("%s float",yytext);}
[+-]?[0-9]+ {printf("%s integer",yytext);}
[a-zA-Z]+|[a-zA-Z]+[0-9]+ {printf("%s identifier",yytext);}
.* {printf("%s not of above",yytext);}
%%
int yywrap() {return 1;}
int main()
{
    extern FILE *yyin;
    yyin = fopen("input3.txt","r");
    yylex();
    return 0;
}
