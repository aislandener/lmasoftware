json.array!(@contas_pagars) do |contas_pagar|
  json.extract! contas_pagar, :id, :dataEmissao, :valor, :vencimento, :juros, :multa, :Fornecedor_id
  json.url contas_pagar_url(contas_pagar, format: :json)
end
