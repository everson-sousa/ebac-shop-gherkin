# language: pt

Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Cenário: Concluir cadastro com todos os dados obrigatórios válidos
    Dado que o cliente esteja na tela de cadastro do checkout
    E todos os campos obrigatórios marcados com asterisco estejam preenchidos
    E o endereço de e-mail possua formato válido
    Quando solicitar o cadastro
    Então o sistema deve concluir o cadastro

  Esquema do Cenário: Impedir cadastro com e-mail inválido
    Dado que o cliente esteja na tela de cadastro do checkout
    E todos os demais campos obrigatórios estejam preenchidos
    Quando informar o e-mail "<email>"
    E solicitar o cadastro
    Então o sistema deve inserir uma mensagem de erro

    Exemplos:
      | email            |
      | usuario@        |
      | usuario.com     |
      | @exemplo.com    |

  Cenário: Impedir cadastro com campos obrigatórios vazios
    Dado que o cliente esteja na tela de cadastro do checkout
    E exista pelo menos um campo obrigatório marcado com asterisco sem preenchimento
    Quando solicitar o cadastro
    Então o sistema deve exibir uma mensagem de alerta
