algoritmo "Ativida Pacetech 5 - Conversor"

var
vetFahrenheit: vetor[1..4] de real
vetCelsius: vetor[1..4] de real
vetHora: vetor[1..4] de literal
i, j: inteiro
opcaoMenu: inteiro
aux: real

inicio
repita                 // COMANDO REPITA ATÉ PARA O MENU
   escreval("-----------Menu--------")
   escreval("1- Armazenar Fahrenheit")
   escreval("2- Armazenar Celsius")
   escreval("3- Atualizar")
   escreval("4- Sair do Programa")
   escreval("-----------------------")
   leia(opcaoMenu)

   escolha opcaoMenu
   caso 1                 // Looping para coletar dados e realizar conversão
      para i de 1 ate 4 faca
         escreval("Informe a temperatura",i, " em Celsius")
         leia(vetCelsius[i])
         escreval("Informe a hora")
         leia(vetHora[i])
         vetFahrenheit[i] <- (vetCelsius[i] * 1.8) + 32   // conversão de celsius para fahrenheit
      fimpara
      para i de 1 ate 4 faca  // MÉTODO BOLHA
         para j de 1 ate 4 faca
            se vetFahrenheit[j] > vetFahrenheit[i] entao
               aux <- vetFahrenheit[i]
               vetFahrenheit[i] <- vetFahrenheit[j]
               vetFahrenheit[j] <- aux
            fimse
         fimpara
      fimpara
      para i de 1 ate 4 faca                                            // Looping para imprimir conversão e hora
escreval("o",i, " ° Valor de Celsius em Fahrenheit era:",vetFahrenheit[i],"°.", " No horário de: ",vetHora[i], "H")
      fimpara

   caso 2                                                             // Looping para coletar dados e realizar conversão
      para i de 1 ate 4 faca
         escreval("Informe a temperatura",i, " em Fahrenheit")
         leia(vetFahrenheit[i])
         vetCelsius[i] <- (vetFahrenheit[i] - 32) / 1.8         // conversão de Fahrenheit para Celsius
         escreval("Informe a hora")
         leia(vetHora[i])
      fimpara
      para i de 1 ate 4 faca                                   // Método Bolha
         para j de 1 ate 4 faca
            se vetCelsius[j] > vetCelsius[i] entao
               aux <- vetCelsius[i]
               vetCelsius[i] <- vetCelsius[j]
               vetCelsius[j] <- aux
            fimse
         fimpara
      fimpara
      para i de 1 ate 4 faca                                       // Looping para imprimir conversão e hora
escreval("o",i, " ° Valor de Fahrenheit em Celsius era:",vetCelsius[i],"°.", " No horário de: ",vetHora[i], "H")
      fimpara
   caso 3
      limpatela
   fimescolha
ate opcaoMenu = 4
fimalgoritmo

