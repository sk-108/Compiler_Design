%{
    #include<stdio.h>
    #include<string.h>
   int operators_count=0,operands_count  = 0,l = 0,j=0,top = -1,valid = 1;
    char operands[10][10],stack[10],operators[10][10];
%}
%%
"(" {top++;stack[top]='(';}
"{" {top++;stack[top]='{';}
"[" {top++;stack[top] = '[';}
")" {if(stack[top]!='(')
    {
        valid  = 0;
    }
    else if(operands_count > 0 && (operands_count-operators_count)!=1){
        valid = 0;
    }
    else{
        top--;
        operands_count = 1;
        operators_count = 0;
    }
}
"}" {
    if(stack[top]!='{')
    {
        valid = 0;
    }
    else if(operands_count>0 && (operands_count-operators_count)!=1)
    {
        valid = 0;
    }
    else{
        top--;
        operands_count = 1;
        operators_count = 0;
    }
}
"]" {
    if(stack[top]!='[')
    {
        valid = 0;
    }
    else if(operands_count > 0 && (operands_count-operators_count) != 1)
    {
        valid = 0;
    }
    else{
        top--;
        operands_count = 1;
        operators_count = 0;
    }
}
"+"|"-"|"*"|"/" {
    operators_count++;
    strcpy(operators[l],yytext);
    l++;
}
[0-9]+|[a-zA-Z][a-zA-Z0-9_]* {
    operands_count++;
    strcpy(operands[j],yytext);
    j++;
}
%%
int yywrap() { return 1;}
int main()
{
    int k;
    printf("enter a arithmetic exp\n");
    yylex();
    if(valid == 1 && top == -1)
    {
        printf("valid expression\n");
    }
    else{
        printf("not valid expression \n");
    }
    return 0;
}