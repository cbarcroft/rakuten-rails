class Advertiser < ActiveRecord::Base
  has_many :products

  # Validators
  validates :name, presence: true
end
