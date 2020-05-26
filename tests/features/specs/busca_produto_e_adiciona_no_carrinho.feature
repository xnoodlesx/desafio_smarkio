#language: pt
#encoding: UTF-8

Funcionalidade: Buscar um produto e o adicionar ao carrinho 

-Eu como Usuário
-Quero efetuar a busca de um produto do meu interesse e adiciona-lo ao carrinho

@busca_e_compra
Cenario: Efetuar busca de produto com sucesso e escolher um produto na lista e adiciona-lo ao carrinho

Dado efetuo uma busca de um produto
E verifico se a busca foi feita com sucesso
E que eu selecione um produto na lista
Quando clico em compra-lo
Então valido se o produto foi adicionado ao carrinho