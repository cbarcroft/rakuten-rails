FactoryGirl.define do
  factory :advertiser do
    sequence(:name) { |n| "Test Advertiser #{n}" }
  end
end