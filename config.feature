#Lenguage: pt

Funcionalidade: Configurar produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Configurar produto e adicionar ao carrinho
Quando eu selecionar a cor: "Laranja", selecionar tamanho: "XS"
E quantidade: "10"
Então deve adicionar produtos ao carrinho

Cenário: Quantidade inválida de produto
Quando eu selecionar a cor: "Laranja", selecionar tamanho: "XS"
E quantidade: "11"
Então não deve adicionar produtos ao carrinho

Cenário: Tamanho inválido do produto
Quando eu selecionar a cor: "Laranja", não selecionar tamanho
E quantidade: "9"
Então não deve adicionar produtos ao carrinho

Cenário: Cor inválida do produto
Quando eu não selecionar a cor, tamanho: "XS"
E quantidade: "1"
Então não deve adicionar produtos ao carrinho

Cenário: limpar configurações do produto
Quando eu apertar no botão "limpar"
Então não deve voltar as configurações ao estado original.

Esquema do Cenário: Adicionar produtos ao carrinho
Quando eu selecionar <cor>, <tamanho>
E a <Quantidade> 
Então deve <permitir> adicionar produtos ao carrinho.

Exemplos:
|cor|tamanho|Quantidade|Permitir|
|"Laranja"|"XS"|"2"|Permitir|
|"Azul"|"S"|"1"|Permitir|
|"Vermelho"|"M"|"3"|Permitir|
|"Laranja"|"L"|"4"|Permitir|
|"Azul"|"XL"|"5"|Permitir|
|"Vermelho"|"L"|"6"|Permitir|
|"Laranja"|"M"|"7"|Permitir|
|"Azul"|"S"|"8"|Permitir|
|"Vermelho"|"XS"|"9"|Permitir|
|"Laranja"|"XL"|"10"|Permitir|
