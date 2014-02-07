json.array!(@products) do |product|
  json.extract! product, :id, :name, :picture, :cost, :item, :description
  json.url product_url(product, format: :json)
end
