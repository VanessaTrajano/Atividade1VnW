// �> Convers�o de moedas :
//  Crie um conversor de moedas que permite o usu�rio digitar o valor que deseja converter e d� a op��o de 3 moedas internacionais
programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real dolar = 4.87
    real euro = 5.19
    real libra = 6.04
    real valor
    inteiro auxConversao

    escreva("Digite o valor que voc� quer converter: ")
    leia(valor)
    escreva("As op��es de convers�o s�o: \n 1) D�lar \n 2) Euro \n 3) Libra \n \n Qual op��o voc� escolhe? ")
    leia(auxConversao)

    escolha(auxConversao){
      caso 1:
        escreva(valor, " reais s�o convertidos em ", mat.arredondar(conversor(valor, dolar), 2), " d�lares")
      pare
      caso 2:
        escreva(valor, " reais s�o convertidos em ", mat.arredondar(conversor(valor, euro), 2), " euros")
      pare
      caso 3:
        escreva(valor, " reais s�o convertidos em ", mat.arredondar(conversor(valor, libra), 2), " libras")
      pare
      caso contrario:
        escreva("Op��o inv�lida.")
    }


  }

  funcao real conversor(real valor, real valConversao){
    retorne valConversao * valor
  }
}
