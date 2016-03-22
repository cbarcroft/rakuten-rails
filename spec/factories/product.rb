FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Test Product #{n}" }
    advertiser
  end
end