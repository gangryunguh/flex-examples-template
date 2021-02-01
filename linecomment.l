/* The following is an example lex program which reports the number of line
   comments in the input program which being redirected from console keyboard.
 */

%{
#include <cstdio>
#include <cctype>
#include <cstring>

%}

%%
\n    { ECHO; }
.     { ECHO; }
%%
/*******************/
/* c/c++ functions */
/*******************/

int main() {
   yylex();
   return 0;
}

int yywrap() {
   return 1;
}

void lexical_error(char *msg) {
  printf("%s\n", msg);
} 
