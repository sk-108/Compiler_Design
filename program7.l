%{
#include<stdio.h>
%}
start \/\*
end \*\/
%%
\/\/(.*) {};
{start}.*{end} {};
%%
int yywrap(){
return 1;}
int main(){
extern FILE *yyin,*yyout;
yyin=fopen("input7.txt","r");
yyout=fopen("output7.txt","w");
yylex();
return 0;
}
