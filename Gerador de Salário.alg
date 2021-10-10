algoritmo "Gerador de Salário"

var
    nome, cargo: caracter
      salarioAntigo, salarioNovo: real
inicio
                       escreval("Informe o seu Nome:")
                       leia(nome)
                       escreval("Informe o seu cargo")
                       leia(cargo)
                       escreval("Informe seu Salário:")
                       leia(salarioAntigo)
                       salarioNovo <- salarioAntigo *1.3
                       escreval("Olá ",nome," seu novo salário é de: ",salarioNovo, " Atuando no cargo de: ",cargo)
fimalgoritmo
