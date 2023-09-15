// �> Sistema de login: 
// Construa um sistema de login e verifique se as credenciais est�o corretas. Se as credenciais estiverem erradas em 3 tentativas, 
// bloqueie o usu�rio.
programa {
  cadeia usuarioCerto = "Tio Samuca", senhaCerta = "VnW - o melhor"
  funcao inicio() {
    cadeia senhaDigitada, usuarioDigitado
    escreva("Fa�a seu Login!")
    escreva("\nDigite seu usu�rio: ")
    leia(usuarioDigitado)
    escreva("Digite sua senha: ")
    leia(senhaDigitada)

    confereCredencial(usuarioDigitado, senhaDigitada)
  }
  inteiro i = 0
  funcao confereCredencial(cadeia user, cadeia senha){
    faca{
      i += 1
      limpa()
      se(user == usuarioCerto e senha == senhaCerta){
        escreva("Login conclu�do com sucesso!!")
        retorne 1
      } senao {
        escreva("Usu�rio ou senha digitados est�o incorretos.")
        se(i == 3){
          escreva("\nMuitas tentativas. Usu�rio bloqueado temporariamente.")
        } senao{
          escreva("\nFa�a o login novamente.")
          escreva("\nDigite seu usu�rio: ")
          leia(user)
          escreva("Digite sua senha: ")
          leia(senha)
          confereCredencial(user, senha)
        }
      }
    } enquanto(i < 3)
  }
}
