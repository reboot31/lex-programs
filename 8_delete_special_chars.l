//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to delete all the special characters.													//
//	(Provide input file explicitily)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//




%%
\~|\!|\@|\#|\$|\|\%|\^|\&|\*|\;|\"|\'|\,	{printf(" ");}
%%

int main()
{
	yyin = fopen("input.c","r");
	yylex();
	return 0;
}