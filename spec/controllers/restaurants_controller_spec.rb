require 'spec_helper'

describe RestaurantsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      expect(foobar).to eq 1
    end
  end

end
