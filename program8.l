%{
#include<stdio.h>
%}
start \/\*
end \*\/
%%
\<(.*)\> {fprintf(yyout,"%s",yytext);}
. {}
%%
int yywrap(){
return 1;}
int main(){
extern FILE *yyin,*yyout;
yyin=fopen("input8.txt","r");
yyout=fopen("output8.txt","w");
yylex();
return 0;
}
