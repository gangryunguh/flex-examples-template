/* The following is an example to find the ident token which only happens outside
   of character context. 
   - Note that the cxref requires to properly handle string and comment contexts */
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
