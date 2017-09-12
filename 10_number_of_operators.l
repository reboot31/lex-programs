//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to count the number of operators present in the file.									//
//	(Provide input file explicitily)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//



%{
	int counter=0;
%}

%%
[-+/*%]		{counter++;}
%%


int main()
{
	yyin = fopen("input.c", "r");
	yylex();
	printf("The number of operators are: %d\n", counter);
	return 0;
}