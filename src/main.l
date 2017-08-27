

%{
#include <stdio.h>
%}

ALFANUM [a-zA-Z0-9]
SPECIAL [_\.-]


%%


{ALFANUM}+[a-zA-Z0-9_\.-]*{ALFANUM}+@{ALFANUM}+([.]{ALFANUM}+)*   { printf("%s\n", yytext); }
[a-zA-Z0-9_\.-]+@[a-zA-Z0-9_-]+ ;
[\t\r\n] ;
[[:space:]] ;
. ;

%%



int main() {
  yylex();
  return 0;
}

