json.array!(@users) do |user|
  json.extract! user, :id, :login, :senha
  json.url user_url(user, format: :json)
end
