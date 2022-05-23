#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Cenário: Cadastro inválido
Quando eu não preencher todos os campos obrigatórios
E tentar finalizar o cadastro
Então deve exibir uma mensagem de alerta: "preencher campos obrigatórios"

Cenário: Cadastro inválido
Quando eu não preencher nenhum campos obrigatórios
E tentar finalizar o cadastro
Então deve exibir uma mensagem de alerta: "preencher campos obrigatórios"

Cenário: E-mail inválido
Quando eu preencher todos os campos obrigatórios
E preencher o e-mail: "joaoebac.com.br"
Então deve exibir uma mensagem de alerta: "E-mail inválido"

Esquema do Cenário: E-mail inválido
Quando eu preencher todos os campos obrigatórios
E o <e-mail> 
Então deve exibir uma mensagem de alerta: "E-mail inválido"

Exemplos:
|e-mail|mensagem|
|"joaoebac.com.br"|"E-mail inválido"|
|"joao@ebac.com"|"E-mail inválido"|
|"joao@ebac.com..br"|"E-mail inválido"|
