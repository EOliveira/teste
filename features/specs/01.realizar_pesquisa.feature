#language: pt
#utf-8

Funcionalidade: Acessar o site automationpractice e realizar pesquisna
		Como usuário do automationpractice
        Quero acessar o pagina automationpractice
        Para realizar uma pesquisa

Contexto: Busca
    Dado que eu acesse o site do E-commerce
    E clico no botão Buscar

#@home
Cenario: Realizar pesquisa por nome do produto
    Quando preencho o campo de busca com o produto "Printed Chiffon Dress"
    Entao visualizo o resultado da busca

Cenario: Realizar pesquisa por nome do produto não encotrado
    Quando preencho o campo de busca com o produto inexistente "xxxxxxxx"
    Entao visualizo o resultado da busca