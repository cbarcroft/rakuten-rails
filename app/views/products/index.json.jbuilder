json.array!(@products) do |product|
  json.extract! product, :id, :name
  json.advertiser product.advertiser.name
end
