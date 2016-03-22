require 'rails_helper'

RSpec.describe Advertiser, type: :model do
  it "creates successfully" do
    FactoryGirl.create(:advertiser)
    expect(Advertiser.count).to eq(1)
  end

  it "creates 10 successfully" do
    10.times {FactoryGirl.create(:advertiser)}
    expect(Advertiser.count).to eq(10)
  end

  it "won't save without a name" do
    advertiser = FactoryGirl.build(:advertiser, name: nil)
    advertiser.save
    expect(advertiser.errors[:name].size).to eq(1)
  end

  it "will update the name" do
    advertiser = FactoryGirl.create(:advertiser)
    advertiser.name = "New Name"
    expect(advertiser.save).to eq(true)
  end

  it "will delete" do
    advertiser = FactoryGirl.create(:advertiser)
    expect{advertiser.destroy}.to change{Advertiser.count}.by(-1)
  end

end
