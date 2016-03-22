require 'rails_helper'

RSpec.describe "Products", type: :request do
  it 'retrieves a list of products in JSON format' do
    FactoryGirl.create_list(:product, 25)

    get '/products.json'

    json = JSON.parse(response.body)

    # Test for the 200 status-code
    expect(response).to be_success

    # Check to make sure the right amount of products are returned
    expect(json.length).to eq(25)
  end
end
