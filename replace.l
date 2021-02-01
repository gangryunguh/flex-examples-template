/* The following is an example lex program which finds the word "hell" from a
   redirected input file and output all the input bytes to the console after
   replacing every instance of "hell" to "heaven". */

%{
#include <cstdio>
#include <cctype>
#include <cstring>

%}


%%

%%
/*******************/
/* c/c++ functions */
/*******************/

int main() {
   yylex();
   return 0;
}

int yywrap() {
   printf("Bye Bye!\n");
   return 1;
}

void lexical_error(char *msg) {
  printf("%s\n", msg);
} 
