# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Cenário: Realizar login com dados válidos
    Dado que o cliente esteja na tela de login
    Quando inserir usuário e senha válidos
    Então deve ser direcionado para a tela de checkout

  Esquema do Cenário: Exibir alerta ao informar dados inválidos
    Dado que o cliente esteja na tela de login
    Quando inserir "<usuario>" e "<senha>"
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario          | senha          |
      | usuário inválido | senha válida   |
      | usuário válido   | senha inválida |