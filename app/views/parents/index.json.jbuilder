json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :gender--no-test-framewor
  json.url parent_url(parent, format: :json)
end
