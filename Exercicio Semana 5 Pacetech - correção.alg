algoritmo "Ativida Pacetech 5 - Conversor"

var
vetFahrenheit: vetor[1..4] de real
vetCelsius: vetor[1..4] de real
vetHora: vetor[1..4] de literal
i, j: inteiro
opcaoMenu: inteiro
aux: real
aux2: literal

inicio
repita                 // COMANDO REPITA AT� PARA O MENU
   escreval("-----------Menu--------")
   escreval("1- Armazenar Fahrenheit")
   escreval("2- Armazenar Celsius")
   escreval("3- Atualizar")
   escreval("4- Sair do Programa")
   escreval("-----------------------")
   leia(opcaoMenu)

   escolha opcaoMenu
   caso 1                 // Looping para coletar dados e realizar convers�o
      para i de 1 ate 4 faca
         escreval("Informe a temperatura",i, " em Celsius")
         leia(vetCelsius[i])
         escreval("Informe a hora")
         leia(vetHora[i])
         vetFahrenheit[i] <- (vetCelsius[i] * 1.8) + 32   // convers�o de celsius para fahrenheit
      fimpara
      para i de 1 ate 4 faca  // M�TODO BOLHA
         para j de 1 ate 4 faca
            se vetFahrenheit[j] > vetFahrenheit[i] entao
               aux <- vetFahrenheit[i]
               vetFahrenheit[i] <- vetFahrenheit[j]
               vetFahrenheit[j] <- aux
                 aux2 <- vetHora[i]
               vetHora[i] <- vetHora[j]
               vetHora[j] <- aux2
               fimse
         fimpara
      fimpara
      para i de 1 ate 4 faca                                            // Looping para imprimir convers�o e hora
escreval("o",i, " � Valor de Celsius em Fahrenheit era:",vetFahrenheit[i],"�.", " No hor�rio de: ",vetHora[i], "H")
      fimpara

   caso 2                                                             // Looping para coletar dados e realizar convers�o
      para i de 1 ate 4 faca
         escreval("Informe a temperatura",i, " em Fahrenheit")
         leia(vetFahrenheit[i])
         vetCelsius[i] <- (vetFahrenheit[i] - 32) / 1.8         // convers�o de Fahrenheit para Celsius
         escreval("Informe a hora")
         leia(vetHora[i])
      fimpara
      para i de 1 ate 4 faca                                   // M�todo Bolha
         para j de 1 ate 4 faca
            se vetCelsius[j] > vetCelsius[i] entao
               aux <- vetCelsius[i]
               vetCelsius[i] <- vetCelsius[j]
               vetCelsius[j] <- aux
               aux2 <- vetHora[i]
               vetHora[i] <- vetHora[j]
               vetHora[j] <- aux2
            fimse
         fimpara
      fimpara
      para i de 1 ate 4 faca                                       // Looping para imprimir convers�o e hora
escreval("o",i, " � Valor de Fahrenheit em Celsius era:",vetCelsius[i],"�.", " No hor�rio de: ",vetHora[i], "H")
      fimpara
   caso 3
      limpatela
   fimescolha
ate opcaoMenu = 4
fimalgoritmo

