//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to delete all the keywords.																//
//	(Provide input file explicitily)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//



%%
include|int|main|float|char|double|printf|scanf|if|else|return	{printf(" ");}
%%

int main()
{
	yyin = fopen("input.c","r");
	yylex();
	return 0;
}