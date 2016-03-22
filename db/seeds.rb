# Create 15 fake Advertisers
(1..15).each do |i|
  Advertiser.create(name: "Sample Advertiser #{i}")
end

# Create 100 fake products, assigned to a random advertiser
(1..100).each do |j|
  Product.create(name: "Sample Product #{j}", advertiser_id: rand(1..15))
end