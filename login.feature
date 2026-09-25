Funcionalidade: Login de cliente

  História de usuário:
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

  Contexto:
    Dado que o cliente esteja na tela de login da EBAC-SHOP

  Cenário: Login realizado com dados válidos
    Quando o cliente informar um usuário válido
    E informar uma senha válida
    E clicar no botão de login
    Então deve ser direcionado para a tela de checkout

  Cenário: Login com usuário ou senha inválidos
    Quando o cliente informar um usuário ou senha inválidos
    E clicar no botão de login
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

      Esquema do Cenário: Login com dados inválidos
    Quando o cliente informar o usuário <usuario>
    E informar a senha <senha>
    E clicar no botão de login
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario       | senha          |
      | usuarioerrado | senha123       |
      | usuario       | senhaerrada    |