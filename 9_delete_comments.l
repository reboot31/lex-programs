//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to delete all the comments, single line and multiple line, both.						//
//	(Provide input file explicitily)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//




%%
\/\/.*			{;}
\/\*(.*\n)*\*\/	{;}
%%


int main()
{
	yyin = fopen("input.c", "r");
	yylex();
	return 0;
}