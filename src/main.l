

%{
#include <stdio.h>
%}

ALFANUM [a-zA-Z0-9]
SPECIAL [_\.-]


%%


{ALFANUM}+[{ALFANUM}{SPECIAL}]*{ALFANUM}+@{ALFANUM}+([.]{ALFANUM}+)* { printf("%s\n", yytext); }

[ \t\r\n] ;
[[:space:]] ;
. ;

%%



int main() {
  yylex();
  return 0;
}

