# language: pt

Funcionalidade: Lista de desejos da EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero favoritar os itens que eu gosto
  Para efetuar a compra futuramente

  Contexto:
    Dado que estou na página de produtos da EBAC-SHOP

  Cenário: Adicionar produto à lista de desejos
    Dado que existe um produto disponível na loja
    Quando clico no ícone de favorito do produto
    Então o produto deve ser adicionado à minha lista de desejos

  Cenário: Visualizar produtos favoritos
    Dado que possuo produtos adicionados à lista de desejos
    Quando acesso a lista de desejos
    Então devo visualizar os produtos que favoritei

  Cenário: Remover produto da lista de desejos
    Dado que possuo um produto na lista de desejos
    Quando removo o produto da lista
    Então o produto não deve mais ser exibido na lista de desejos

  Cenário: Adicionar produto da lista de desejos ao carrinho
    Dado que possuo um produto na lista de desejos
    E o produto está disponível em estoque
    Quando adiciono o produto ao carrinho
    Então o produto deve ser adicionado ao carrinho

  Cenário: Tentar adicionar produto sem estoque ao carrinho
    Dado que possuo um produto na lista de desejos
    E o produto está indisponível em estoque
    Quando tento adicionar o produto ao carrinho
    Então o sistema não deve permitir adicionar o produto ao carrinho

  Esquema do Cenário: Favoritar diferentes produtos
    Quando clico no ícone de favorito do produto <produto>
    Então o produto <produto> deve ser adicionado à lista de desejos

    Exemplos:
      | produto              |
      | Augusta Pullover Jacket |
      | Stellar Solar Jacket    |