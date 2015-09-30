json.array!(@telefone_clientes) do |telefone_cliente|
  json.extract! telefone_cliente, :id, :ddd, :telefone, :Cliente_id
  json.url telefone_cliente_url(telefone_cliente, format: :json)
end
