%{
#include <stdio.h>
%}

/*english -> american*/
%%
"colour"	{ printf("color");}
"flavour" 	{ printf("flavor");}
"clever" 	{ printf("smart");}
"smart" 	{ printf("elegant");}
"conservative" 	{ printf("liberal");}
.|\n 		{ printf("%s", yytext);}
%%

int main() {
	yylex();
	return 0;
}
