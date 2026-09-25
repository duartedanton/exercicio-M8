# language: pt

Funcionalidade: Cadastro de cliente

  História de usuário:
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

  Contexto:
    Dado que o cliente esteja na tela de cadastro da EBAC-SHOP

  Cenário: Cadastro realizado com todos os campos obrigatórios preenchidos
    Quando o cliente preencher todos os campos obrigatórios
    E informar dados válidos
    E clicar no botão de cadastro
    Então o cadastro deve ser realizado com sucesso

  Cenário: Cadastro com e-mail inválido
    Quando o cliente preencher todos os campos obrigatórios
    E informar um e-mail com formato inválido
    E clicar no botão de cadastro
    Então deve ser exibida uma mensagem de erro informando que o e-mail é inválido

  Cenário: Cadastro com campos obrigatórios vazios
    Quando o cliente deixar um ou mais campos obrigatórios vazios
    E clicar no botão de cadastro
    Então deve ser exibida uma mensagem de alerta solicitando o preenchimento dos campos obrigatórios

      Esquema do Cenário: Cadastro com diferentes formatos de e-mail inválido
    Quando o cliente preencher todos os campos obrigatórios
    E informar o e-mail <email>
    E clicar no botão de cadastro
    Então deve ser exibida uma mensagem de erro informando que o e-mail é inválido

    Exemplos:
      | email              |
      | usuario            |
      | usuario@           |
      | @gmail.com         |
      | usuario@gmail      |