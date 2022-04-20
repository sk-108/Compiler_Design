%{
#include<stdio.h>
int l=0,w=0,c=0,ws=0;
%}
%%
[\n] {l++;}
[^ \n\t]+ {w++;c=c+yyleng;}
[ ] {ws++;}
. {c++;}
%%
int yywrap(){
return 1;}
int main(){
extern FILE* yyin;
yyin=fopen("input1.txt","r");
yylex();
printf("\nNumber of Lines: %d\n",l);
printf("\nNumber of Words: %d\n",w);
printf("\nNumber of Characters: %d\n",c);
printf("\nNumber of White Spaces: %d\n",ws);
return 0;
}
