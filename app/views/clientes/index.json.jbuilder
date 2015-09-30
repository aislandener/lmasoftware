json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cnpj, :endereco, :bairro, :cidade, :uf, :pais
  json.url cliente_url(cliente, format: :json)
end
