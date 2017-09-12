//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to count the number of positive integers, negative integers								//
//  positive fraction, negative fractions of type (a.b) and (a/b)			 									//
//																												//
//--------------------------------------------------------------------------------------------------------------//



%{
	int posi=0;
	int negi=0;
	int posf=0;
	int negf=0;
%}

%%
[+]?[0-9]+				{posi++;}
[-][0-9]+				{negi++;}
[+]?[0-9]*\.[0-9]+		{posf++;}
[-][0-9]*\.[0-9]+		{negf++;}
[+]?[0-9]+\/[0-9]+		{posf++;}
[-][0-9]+\/[0-9]+		{negf++;}
%%

int main()
{
	yylex();
	printf("\nNumber of positive integer: %d\nNumber of positive fraction: %d\n", posi, posf);
	printf("Number of negative integer: %d\nNumber of negative fraction: %d\n\n", negi, negf);
	return 0;
}