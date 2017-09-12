//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to convert the keyword "scanf" to "readf" and "printf" to "writef".						//
//	(Provide input file as an argument)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//





val1  printf
val2  scanf

%%
{val1}		{printf("writef");}
{val2}		{printf("readf");}
%%

int main(int argc, char **argv)
{
	if(argc<=1)
	{
		printf("Please provide file as argument\n");
		return 0;
	}
	yyin = fopen(argv[1],"r");
	yylex();
	return 0;	
}	