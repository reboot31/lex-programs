//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to count the number of characters, words and lines,										//
//  where input is to be taken from keyboard.																	//
//																												//
//--------------------------------------------------------------------------------------------------------------//




%{
	int chars=0;
	int words=0;
	int lines=0;
%}


%%
[a-zA-Z]	{words++; chars += strlen(yytext);}
[\n]		{chars++; lines++;}
[.]			{chars++;}
%%


int main()
{
	yylex();
	printf("\nNumber of characters: %d\nNumber of words: %d\nNumber of lines: %d\n\n", chars, words, lines);
	return 0;
}