json.array!(@passages) do |passage|
  json.extract! passage, :id, :title, :body, :test_body, :user_id, :file_name
  json.url passage_url(passage, format: :json)
end
