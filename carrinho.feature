Funcionalidade: Configuração de produto

  História de usuário:
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

  Contexto:
    Dado que o cliente esteja na página de configuração do produto

  Cenário: Configurar produto com cor, tamanho e quantidade
    Quando o cliente selecionar uma cor
    E selecionar um tamanho
    E informar a quantidade desejada
    E clicar no botão de adicionar ao carrinho
    Então o produto deve ser adicionado ao carrinho

  Cenário: Tentar adicionar produto sem selecionar cor, tamanho ou quantidade
    Quando o cliente não selecionar um dos campos obrigatórios
    E clicar no botão de adicionar ao carrinho
    Então deve ser exibida uma mensagem informando que os campos obrigatórios devem ser preenchidos

  Esquema do Cenário: Limite de quantidade de produtos por venda
    Quando o cliente selecionar uma cor
    E selecionar um tamanho
    E informar a quantidade <quantidade>
    E clicar no botão de adicionar ao carrinho
    Então o sistema deve permitir a compra somente quando a quantidade for igual ou inferior a 10

    Exemplos:
      | quantidade |
      | 1          |
      | 5          |
      | 10         |
      | 11         |

  Cenário: Limpar configuração do produto
    Quando o cliente selecionar uma cor
    E selecionar um tamanho
    E informar uma quantidade
    E clicar no botão "limpar"
    Então os campos devem voltar ao estado original

