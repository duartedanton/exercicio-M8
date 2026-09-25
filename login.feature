# language: pt

Funcionalidade: Login na plataforma EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login da EBAC-SHOP

  Cenário: Realizar login com credenciais válidas
    Quando informo um usuário válido
    E informo uma senha válida
    E clico no botão de login
    Então devo acessar minha conta

  Cenário: Impedir login com credenciais inválidas
    Quando informo um usuário ou senha incorretos
    E clico no botão de login
    Então o sistema não deve permitir o acesso à conta
    E deve apresentar uma mensagem de erro

  Cenário: Alterar senha esquecida
    Dado que esqueci minha senha atual
    Quando solicito a alteração da senha
    Então devo receber as instruções para alterar minha senha

  Cenário: Lembrar usuário para futuros logins
    Quando informo um usuário válido
    E seleciono a opção para lembrar o usuário
    E realizo o login
    Então o usuário deve ser lembrado para futuros logins

  Cenário: Visualizar pedidos após realizar login
    Dado que possuo pedidos cadastrados
    Quando realizo o login com credenciais válidas
    Então devo conseguir visualizar meus pedidos

  Esquema do Cenário: Validar diferentes combinações de login
    Quando informo o usuário <usuario>
    E informo a senha <senha>
    E clico no botão de login
    Então o resultado do login deve ser <resultado>

    Exemplos:
      | usuario          | senha          | resultado                  |
      | usuario_valido   | senha_valida   | acesso permitido           |
      | usuario_invalido | senha_valida   | acesso negado              |
      | usuario_valido   | senha_invalida | acesso negado              |
      | usuario_invalido | senha_invalida | acesso negado              |