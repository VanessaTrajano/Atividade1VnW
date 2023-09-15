// —> Sistema de login: 
// Construa um sistema de login e verifique se as credenciais estão corretas. Se as credenciais estiverem erradas em 3 tentativas, 
// bloqueie o usuário.
programa {
  cadeia usuarioCerto = "Tio Samuca", senhaCerta = "VnW - o melhor"
  funcao inicio() {
    cadeia senhaDigitada, usuarioDigitado
    escreva("Faça seu Login!")
    escreva("\nDigite seu usuário: ")
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
        escreva("Login concluído com sucesso!!")
        retorne 1
      } senao {
        escreva("Usuário ou senha digitados estão incorretos Tentativas restantes: ", 3-i)
        se(i == 3){
          escreva("\nMuitas tentativas. Usuário bloqueado temporariamente.")
        } senao{
          escreva("\nFaça o login novamente.")
          escreva("\nDigite seu usuário: ")
          leia(user)
          escreva("Digite sua senha: ")
          leia(senha)
          confereCredencial(user, senha)
        }
      }
    } enquanto(i < 3)
  }
}
