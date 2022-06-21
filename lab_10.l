%{
    #include<stdio.h>
%}
reg (a|b)*(aa|bb|ab|ba)
%%
{reg} {printf("Accepted");}
.* {printf("not Accepted");}
%%
int yywrap(){}

int main()
{
    yylex();
    return 0;
}