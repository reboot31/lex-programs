//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to count the number of vowels and consonants											//
//  where input is to be taken from keyboard.																	//
//																												//
//--------------------------------------------------------------------------------------------------------------//




%{
	int vowels=0;
	int consonants=0;
%}

%%
[aeiouAEIOU]	{vowels++;}
[a-zA-Z]		{consonants++;}
%%

int main()
{
	yylex();
	printf("\nNumber of vowels: %d\nNumber of consonants: %d\n\n", vowels, consonants);
	return 0;
}
