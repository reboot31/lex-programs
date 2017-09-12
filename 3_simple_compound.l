//--------------------------------------------------------------------------------------------------------------//
//																												//
//	Write a lex program to check whether the given sentence is simple or compound.								//
//	(sensitive to and, or, but)																											//
//																												//
//--------------------------------------------------------------------------------------------------------------//



%{
	int simple=1;
%}


%%
[Aa][Nn][Dd]|[Oo][Rr]|[Bb][Uu][Tt]		simple=0;
.										;
\n 										return 0;
%%


int main()
{
	yylex();
	if (simple==1)
		printf("\nThe sentence is simple\n\n");
	else
		printf("\nThe sentence is compound\n\n");
	return 0;
}