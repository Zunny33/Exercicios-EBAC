#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que eu insira os dados válidos na EBAC-SHOP

Cenário: Usuário inexistente
Quando eu digitar o usuário "joaoebac.com.br"
E senha: "123@456"
Então deve exibir mensagem de alerta: "E-mail inválido"

Cenário: Senha incorreta
Quando eu digitar o usuário "joao@ebac.com.br"
E senha: "123@56"
Então deve exibir mensagem de alerta: "Usuário ou senha inválidos"

Esquema do Cenário: Autenticar multiplos usuários
Quando eu digitar <usuario>
E a <senha>
Então deve direcionar para a aba de checkout

Exemplos:
|usuario|senha|
|"joao@ebac.com.br"|"123@456"|
|"maria@ebac.com.br"|"123@456"|
|"jose@ebac.com.br"|"123@456"|
|"gabriel@ebac.com.br"|"123@456"|



