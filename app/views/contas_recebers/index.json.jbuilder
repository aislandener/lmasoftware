json.array!(@contas_recebers) do |contas_receber|
  json.extract! contas_receber, :id, :dataEmissao, :valor, :vencimento, :juros, :multa, :Cliente_id
  json.url contas_receber_url(contas_receber, format: :json)
end
