json.array!(@telefone_fornecedors) do |telefone_fornecedor|
  json.extract! telefone_fornecedor, :id, :ddd, :telefone, :Fornecedor_id
  json.url telefone_fornecedor_url(telefone_fornecedor, format: :json)
end
