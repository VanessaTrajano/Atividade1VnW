// —> Conversão de moedas :
//  Crie um conversor de moedas que permite o usuário digitar o valor que deseja converter e dê a opção de 3 moedas internacionais
programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real dolar = 4.87
    real euro = 5.19
    real libra = 6.04
    real valor
    inteiro auxConversao

    escreva("Digite o valor que você quer converter: ")
    leia(valor)
    escreva("As opções de conversão são: \n 1) Dólar \n 2) Euro \n 3) Libra \n \n Qual opção você escolhe? ")
    leia(auxConversao)

    escolha(auxConversao){
      caso 1:
        escreva(valor, " reais são convertidos em ", mat.arredondar(conversor(valor, dolar), 2), " dólares")
      pare
      caso 2:
        escreva(valor, " reais são convertidos em ", mat.arredondar(conversor(valor, euro), 2), " euros")
      pare
      caso 3:
        escreva(valor, " reais são convertidos em ", mat.arredondar(conversor(valor, libra), 2), " libras")
      pare
      caso contrario:
        escreva("Opção inválida.")
    }


  }

  funcao real conversor(real valor, real valConversao){
    retorne valConversao * valor
  }
}
