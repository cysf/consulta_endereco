# language: pt

@address
Funcionalidade: Endereço
Para que eu possa consultar dados de endereço

Cenário: Consultar código IBGE
Quando informo um CEP válido "01001000"
Então vejo o código IBGE do endereço encontrado

Cenário: CEP inválido
Quando informno um CEP inválido "99999999"
Então vejo a mensagem de erro