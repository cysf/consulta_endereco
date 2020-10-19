require "httparty"

class CepApi
  include HTTParty
  require_relative "../hooks/cepapi_hook"
  base_uri "https://viacep.com.br"

  def get_address(cep)
    self.class.get("/ws/#{cep}/json/")
  end
end
