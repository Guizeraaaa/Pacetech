algoritmo "Programa Convers�o"
// Fun��o :
// Autor : Guilherme Batista Correia
// Data : 20/10/2021
// Se��o de Declara��es 
var
  varFahrenheit, varCelsius, varDolar, varReal, qtdDolar, qtdReal, cotacaoD, cotacaoR: real
  opcaoMenu: inteiro
inicio
REPITA
    Escreval(" ------------MENU------------- ")
    Escreval(" 1 - Converter para Fahrenheit")
    Escreval(" 2 - Converter para Celsius")
    Escreval(" 3 - Converter para Dolar")
    Escreval(" 4 - Converter para Real")
    Escreval(" 5 - Atualizar")
    Escreval(" 6 - Sair do Programa")
    escreval("----------------------------")
    leia(opcaoMenu)

       escolha opcaoMenu
       caso 1
      escreval(" Informe o valor em Celsius")
      leia(varCelsius)
          varFahrenheit <-(varCelsius * 1.8) + 32
          escreval(" O valor em Fahrenheit �: ", varFahrenheit, "Fahrenheit")
          
       caso 2
      escreval(" Informe o valor em Fahrenheit")
      leia(varFahrenheit)
          varcelsius <- (varFahrenheit - 32) / 1.8
          escreval(" O valor em Celsius �: ", varCelsius, "Celsius")
          
        caso 3
        escreval("Informe a cota��o do D�lar: ")
        leia(cotacaoD)
        escreval("Informe a quantidade em Real: ")
        leia(qtdReal)
         qtdDolar <- qtdReal * cotacaoD
         escreval("Voc� possui: ",qtdDolar, "$")

         caso 4
        escreval("Informe a cota��o do Real: ")
        leia(cotacaoR)
        escreval("Informe a quantidade em D�lar: ")
        leia(qtdDolar)
         qtdReal <- qtdDolar * cotacaoR
         escreval("Voc� possui: ",qtdReal, "R$")

          caso 5
           limpatela
          fimescolha


     ATE opcaoMenu = 6
fimalgoritmo




