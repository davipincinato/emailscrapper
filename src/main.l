/*
 * Davi Pincinato - RA 157810
 * EA 879 - Prof. Tiago Tavares
 * Atividade 2
 * Email Scrapper
 * Nesta tarefa, encontraremos e-mails válidos usando análise léxica.
*/

%{
#include <stdio.h>
int i;
%}

%%

[a-zA-Z0-9]+[-0-9a-zA-Z._]*[a-zA-Z0-9]+@[a-zA-Z0-9]+([-._][a-zA-Z0-9]+)* { //Lê os caracteres antes de @, podendo ser letras, números e símbolos. Após @, identifica o restante dos caracteres.
		printf("%s\n", yytext); //Imprime o(s) email(s) lido(s)
	}
[a-zA-Z0-9]+[-0-9a-zA-Z._]*[a-zA-Z0-9]+@[a-zA-Z0-9]+([-._][a-zA-Z0-9]+)*[-] { //Corrigir o caso "email-@invalido.com e email@invalido- e email@invalido" - "traços" - Teste 5
; 
	      }
.|\n|\s     ;

%%

int main() {
  yylex();
  return 0;
}



