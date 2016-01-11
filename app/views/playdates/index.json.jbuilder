json.array!(@playdates) do |playdate|
  json.extract! playdate, :id, :location--no-test-framework
  json.url playdate_url(playdate, format: :json)
end
