%{

#include<stdio.h>

#include<stdlib.h>

%}

%token DIGIT LETTER UND NL

NAME: SUSMIT

ROLL NO: 35

BATCH: C5

TE CMPN2

%%

stmt: variable NL {printf("valid identifiers\n"); exit(0);}

;

variable: LETTER alphanumeric

;

alphanumeric: LETTER alphanumeric | DIGIT alphanumeric | UND alphanumeric | LETTER | DIGIT |

UND

;

%%

int main(void)

{

printf("enter the variable: \n");

return yyparse();

}

void yyerror (char *s) {fprintf (stderr, "%s\n", s);}