# language: pt

Funcionalidade: Gerenciamento do carrinho de compras

  Como cliente da EBAC-SHOP
  Quero adicionar produtos no carrinho
  Para realizar a compra dos itens

  Contexto:
    Dado que estou na página de produtos da EBAC-SHOP

  Cenário: Adicionar produtos ao carrinho
    Quando adiciono 1 produto ao carrinho
    Então o produto deve ser exibido no carrinho

  Cenário: Adicionar até 5 produtos ao carrinho
    Quando adiciono 5 produtos diferentes ao carrinho
    Então os 5 produtos devem ser exibidos no carrinho

  Cenário: Tentar adicionar mais de 5 produtos ao carrinho
    Dado que já existem 5 produtos no carrinho
    Quando tento adicionar outro produto
    Então o sistema não deve permitir adicionar mais produtos

  Cenário: Remover um produto do carrinho
    Dado que existe um produto no carrinho
    Quando removo o produto do carrinho
    Então o produto não deve mais ser exibido no carrinho

  Cenário: Aplicar cupom de desconto
    Dado que existe um produto no carrinho
    Quando informo um cupom de desconto válido
    E aplico o cupom
    Então o desconto deve ser aplicado ao valor da compra

  Cenário: Visualizar informações do produto no carrinho
    Dado que existe um produto no carrinho
    Quando acesso o carrinho
    Então devo visualizar o tamanho do produto
    E devo visualizar a cor do produto
    E devo visualizar a descrição do produto

  Cenário: Concluir a compra
    Dado que existe um produto no carrinho
    Quando seleciono a opção de concluir a compra
    Então devo ser direcionado para a etapa de finalização da compra

  Esquema do Cenário: Aplicar diferentes cupons de desconto
    Dado que existe um produto no carrinho
    Quando informo o cupom <cupom>
    E aplico o cupom
    Então o sistema deve apresentar o resultado <resultado>

    Exemplos:
      | cupom       | resultado                    |
      | DESCONTO10  | desconto aplicado            |
      | DESCONTO20  | desconto aplicado            |
      | CUPOMINVALIDO | cupom inválido             |

