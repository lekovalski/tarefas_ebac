#language: pt

Funcionalidade: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de um produto

  Cenário: Configurar um produto com sucesso
    Quando selecionar a cor
    E selecionar o tamanho
    E informar uma quantidade entre 1 e 10
    Então o produto deverá estar apto para ser adicionado ao carrinho

  Esquema do Cenário: Validar preenchimento dos campos obrigatórios
    Quando deixar o campo "<campo>" sem preenchimento
    Então o sistema deverá exibir a mensagem "Todos os campos obrigatórios devem ser preenchidos"

    Exemplos:
      | campo      |
      | cor        |
      | tamanho    |
      | quantidade |

  Cenário: Não permitir mais de 10 produtos por venda
    Quando informar uma quantidade maior que 10
    Então o sistema deverá exibir a mensagem "O limite por venda é de 10 produtos"

  Cenário: Limpar a configuração do produto
    Dado que selecionei cor, tamanho e quantidade
    Quando clicar no botão "Limpar"
    Então o sistema deverá retornar todas as seleções ao estado original