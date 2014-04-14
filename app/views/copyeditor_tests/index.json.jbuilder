json.array!(@copyeditor_tests) do |copyeditor_test|
  json.extract! copyeditor_test, :id, :firstname, :lastname, :user_id, :email, :passage_id, :attempt
  json.url copyeditor_test_url(copyeditor_test, format: :json)
end
