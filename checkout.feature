#language: pt

Feature: Cadastro no Checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro do checkout

  Cenário: Cadastro realizado com sucesso
    Quando preencher todos os campos obrigatórios
    E informar um e-mail válido
    Então o cadastro deverá ser concluído com sucesso

  Esquema do Cenário: Validar formato do e-mail
    Quando informar o e-mail "<email>"
    Então o sistema deverá "<resultado>"

    Exemplos:
      | email                 | resultado                                   |
      | cliente@email.com     | permitir o cadastro                         |
      | cliente@email         | exibir mensagem de erro                     |
      | cliente.com           | exibir mensagem de erro                     |
      | @email.com            | exibir mensagem de erro                     |

  Cenário: Tentar cadastrar com campos obrigatórios vazios
    Quando deixar um ou mais campos obrigatórios em branco
    Então o sistema deverá exibir uma mensagem de alerta