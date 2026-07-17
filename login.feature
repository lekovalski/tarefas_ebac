#language: pt

Feature: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Esquema do Cenário: Autenticação de usuários
    Dado que estou na tela de login
    Quando informar o usuário "<usuario>"
    E informar a senha "<senha>"
    Então o sistema deverá "<resultado>"

    Exemplos:
      | usuario             | senha    | resultado                                                   |
      | cliente@ebac.com.br | 123456   | direcionar para a tela de checkout                          |
      | cliente@ebac.com.br | 123      | exibir a mensagem "Usuário ou senha inválidos"              |
      | errado@ebac.com.br  | 123456   | exibir a mensagem "Usuário ou senha inválidos"              |
      | errado@ebac.com.br  | abc123   | exibir a mensagem "Usuário ou senha inválidos"              |
