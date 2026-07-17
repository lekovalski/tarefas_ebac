#language: pt

Feature: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de um produto

  Esquema do Cenário: Configurar um produto com sucesso
    Quando selecionar a cor "<cor>"
    E selecionar o tamanho "<tamanho>"
    E informar a quantidade "<quantidade>"
    Então o produto deverá estar apto para ser adicionado ao carrinho

    Exemplos:
      | cor      | tamanho | quantidade |
      | Azul     | P        | 1          |
      | Vermelho | M        | 5          |
      | Preto    | G        | 10         |

  Cenário: Não permitir configuração sem preencher os campos obrigatórios
    Quando não selecionar a cor
    Ou não selecionar o tamanho
    Ou não informar a quantidade
    Então o sistema deverá informar que todos os campos obrigatórios devem ser preenchidos

  Cenário: Não permitir mais de 10 produtos por venda
    Quando informar uma quantidade maior que 10
    Então o sistema deverá exibir uma mensagem informando que o limite por venda é de 10 produtos

  Cenário: Limpar a configuração do produto
    Dado que selecionei cor, tamanho e quantidade
    Quando clicar no botão "Limpar"
    Então todas as seleções deverão voltar ao estado original