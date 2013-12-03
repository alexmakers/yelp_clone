require 'spec_helper'

describe 'Restaurants API' do
  context '/restaurants' do
    before(:all) do
      create_list(:restaurant, 10)
      get '/restaurants', {}, 'HTTP_HOST' => 'api.example.com'

      @response, @json = response, JSON.parse(response.body)
    end

    it 'returns a success status code' do
      expect(@response).to be_success
    end

    it 'returns a success status code' do
      expect(@json.length).to eq 10
    end

    it 'does not reveal the owner email' do
      expect(@json.last).not_to include 'owner_email'
    end

    it 'shows the restaurant name' do
      expect(@json.last['name']).to eq 'Restaurant'
    end
  end  
end