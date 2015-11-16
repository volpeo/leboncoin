json.array!(@announces) do |announce|
  json.extract! announce, :id, :title, :description, :price
  json.url announce_url(announce, format: :json)
end
