/* recognize tokens for the calculator and print them out */
%{
#include <stdio.h>
#include <stdlib.h>
#include "fb1-5.tab.h"
%}

/* recognize tokens for the calculator and print them out */
%%
"+"         { return ADD; }
"-"         { return SUB; }
"*"         { return MUL; }
"/"         { return DIV; }
"|"         { return ABS; }
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
\n          { return EOL; }
[ \t]       { /* ignore whitespace */ }
.           { printf("Mystery character %c\n", *yytext); }
%%

