json.array!(@qualificacaos) do |qualificacao|
  json.extract! qualificacao, :id, :cliente_id
  json.url qualificacao_url(qualificacao, format: :json)
end
