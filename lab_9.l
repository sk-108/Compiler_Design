%{
#include<stdio.h>
%}
reg (aa|bb)*((ab|ba)(aa|bb)*(ab|ba)(aa|bb)*)*
%%
{reg} { printf("Accepted");
    }
.* {printf("Not Accepted");}
%%
int yywrap(){
return 1;}
int main(){
yylex();
return 0;
}