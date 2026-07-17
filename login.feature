#language: pt

Funcionalidade: Tela de login
Como aluno do Portal EBAC
Quero me autenticar 
Para visualizar minhas notas

Cenário: Autenticação válida
Dado que eu acesse a página de autenticação do portal EBAC
Quando eu digitar o usuário "le@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá Le"

