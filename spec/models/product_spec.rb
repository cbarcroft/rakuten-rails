require 'rails_helper'

RSpec.describe Product, type: :model do
  it "creates successfully" do
    FactoryGirl.create(:product)
    expect(Product.count).to eq(1)
  end

  it "creates 10 successfully" do
    10.times {FactoryGirl.create(:product)}
    expect(Product.count).to eq(10)
  end

  it "won't save without a name" do
    product = FactoryGirl.build(:product, name: nil)
    product.save
    expect(product.errors[:name].size).to eq(1)
  end

  it "won't save without an advertiser" do
    product = FactoryGirl.build(:product, advertiser: nil)
    product.save
    expect(product.errors[:advertiser].size).to eq(1)
  end

  it "will update the name" do
    product = FactoryGirl.create(:product)
    product.name = "New Name"
    expect(product.save).to eq(true)
  end

  it "will update the advertiser" do
    product = FactoryGirl.create(:product)
    product.advertiser = FactoryGirl.create(:advertiser)
    expect(product.save).to eq(true)
  end

  it "will delete" do
    product = FactoryGirl.create(:product)
    expect{product.destroy}.to change{Product.count}.by(-1)
  end

end