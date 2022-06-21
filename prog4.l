%{
    #include<stdio.h>
    int w = 0,c = 0 , n = 0,ws = 0;
%}
%%
[\n] {n++;}
[^ \n\t]+ {w++; c = c + yyleng;}
[ ] {ws++;}
. {c++;}
%%
int yywrap(){ return 1;}
int main()
{
    extern FILE *yyin;
    yyin = fopen("input.txt",'r');
    yylex();
    printf("no of word are %d \n ",w);
    printf("no of characers are %d \n",c);
    printf("no of new lines are %d ",n);
    return 0;
}