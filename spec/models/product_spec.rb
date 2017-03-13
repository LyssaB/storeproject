require 'rails_helper'

describe Product do 

  context "when product has comments" do

    before do
      @product = FactoryGirl.create(:product)
      @user = FactoryGirl.build(:user)
      @product.comments.create!(rating: 1, user: @user, body: "Terrible.")
      @product.comments.create!(rating: 3, user: @user, body: "Meh.")
      @product.comments.create!(rating: 5, user: @user, body: "Exemplary.")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "when creating new product" do
    before do
      @product = FactoryGirl.create(:product)
    end

    it "creates new product" do
      expect(@product).to be_valid
    end

    it "will not create new product" do
      expect(FactoryGirl.build(:product, price: "")).not_to be_valid
    end
  end
end
