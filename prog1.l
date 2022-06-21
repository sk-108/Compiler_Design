%{
    #include<stdio.h>
    int ch = 0,bl = 0,ln = 0,tb = 0;
%}
%%
[\n] {ln++;}
[\t] {tb++;}
[" "] {bl++;}
. {ch++;}
%%
int yywrap(){return 1;}
int main()
{
    yylex();
    printf("Lines : %d TAB SPACE : %d BLANK SPACE %d CHARACTERS %d",ln,tb,bl,ch);
    return 0;
}