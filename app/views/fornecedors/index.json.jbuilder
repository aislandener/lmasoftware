json.array!(@fornecedors) do |fornecedor|
  json.extract! fornecedor, :id, :nome, :cnpj, :endereco, :bairro, :cidade, :uf, :pais
  json.url fornecedor_url(fornecedor, format: :json)
end
