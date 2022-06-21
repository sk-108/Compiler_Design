%{
    #include<stdio.h>
%}
%%
[ \n\t]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}
%%
int yywrap()
{
    return 1;
}
int main()
{
    extern FILE *yyin,*yyout;
    yyin = fopen('input5.txt','r');
    yyout = fopen('output5.txt','w');
    yylex();
    return 0;
}
