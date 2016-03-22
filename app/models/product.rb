class Product < ActiveRecord::Base
  belongs_to :advertiser

  # Validators
  validates :advertiser, presence: true
  validates :name, presence: true

end
