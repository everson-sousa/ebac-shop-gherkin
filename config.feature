# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Configurar produto com cor, tamanho e quantidade
    Dado que o cliente esteja na página de configuração do produto
    Quando selecionar uma cor, um tamanho e uma quantidade válida
    Então o produto deve estar configurado para ser inserido no carrinho

  Cenário: Impedir configuração sem cor
    Dado que o cliente esteja na página de configuração do produto
    E tenha selecionado um tamanho e uma quantidade
    Quando tentar inserir o produto no carrinho sem selecionar a cor
    Então o sistema deve impedir a inclusão do produto no carrinho

  Cenário: Impedir configuração sem tamanho
    Dado que o cliente esteja na página de configuração do produto
    E tenha selecionado uma cor e uma quantidade
    Quando tentar inserir o produto no carrinho sem selecionar o tamanho
    Então o sistema deve impedir a inclusão do produto no carrinho

  Cenário: Impedir configuração sem quantidade
    Dado que o cliente esteja na página de configuração do produto
    E tenha selecionado uma cor e um tamanho
    Quando tentar inserir o produto no carrinho sem selecionar a quantidade
    Então o sistema deve impedir a inclusão do produto no carrinho

  Esquema do Cenário: Limitar quantidade de produtos por venda
    Dado que o cliente esteja na página de configuração do produto
    Quando selecionar a quantidade "<quantidade>"
    Então o sistema deve "<resultado>"

    Exemplos:
      | quantidade | resultado                                    |
      | 1          | permitir a configuração do produto           |
      | 10         | permitir a configuração do produto           |
      | 11         | impedir a configuração acima do limite de 10 |

  Cenário: Limpar configuração do produto
    Dado que o cliente tenha configurado cor, tamanho e quantidade
    Quando clicar no botão "limpar"
    Então o produto deve voltar ao estado original
