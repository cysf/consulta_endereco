Quando("informo um CEP válido {string}") do |cep_valido|
  @response = @cepapi.get_address(cep_valido)
end

Então("vejo o código IBGE do endereço encontrado") do
  codigo_ibge = @response["ibge"]
  expect(codigo_ibge).to eql "3550308"
  puts "Código IBGE: " + "#{codigo_ibge}"
end

Quando("informno um CEP inválido {string}") do |cep_invalido|
  @response = @cepapi.get_address(cep_invalido)
end

Então("vejo a mensagem de erro") do
  mensagem = @response["erro"]
  expect(mensagem).to be true
end
