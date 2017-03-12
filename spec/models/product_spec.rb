require 'rails_helper'

describe Product do 

  context "when product has comments" do

    before do
      @product = Product.create!(name: "Earrings")
      @user = User.create!(email: "test@test.com", password: "melissa1")
      @product.comments.create!(rating: 1, user: @user, body: "Terrible.")
      @product.comments.create!(rating: 3, user: @user, body: "Meh.")
      @product.comments.create!(rating: 5, user: @user, body: "Exemplary.")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end

    it "is not valid" do
      expect(Product.new(description: "necklace")).not_to be_valid
    end
  end
end
