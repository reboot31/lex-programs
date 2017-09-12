//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to count the number of keywords, and capatalize them.									//
//	(Provide input file as an argument)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//



%{
	#include <stdio.h>
	#include <ctype.h>
	int counter=0;
%}
keyword include|if|else|int|main|float|printf|scanf|return|do|while|for|char|double

%%
{keyword}	{counter++; for (int i=0; i<yyleng; i++) printf ("%c",toupper(yytext[i]));}
%%

int main(int argc, char ** argv)
{
	if (argc<=1)
	{
		printf("Please provide file as an argument\n");
		return 0;
	}
	yyin = fopen(argv[1], "r");
	yylex();
	printf("\n\nNumber of keywords found: %d\n\n", counter);
	return 0;
}