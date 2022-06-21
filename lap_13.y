%{
#include<stdio.h>
int flag = 0;
%}
%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'
%%

ArithmeticExperssion: E{
    printf("\nResult=%d\n",$$);
    return 0;
};
E:E'+'E {$$ = $1 + $3;}
|E'-'E {$$ = $1-$3;}
|E'*'E {$$ = $1*$3;}
|E'/'E {$$ = $1/$3;}
|E'%'E {$$ = $1%$3;}
|'('E')' {$$ = $2;}

|NUMBER {$$ = $1;}
;
%%
void main()
{
    printf("enter any ArithmeticExperssion\n");
    yyparse();
    if(flag == 0)
    {
        printf(" A E is valid\n");
    }
    void yyerror()
    {
        printf(" A E is invalid");
        flag = 1;
    }
}