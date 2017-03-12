require 'rails_helper'

describe Comment do
  
  context "body text present" do
    before do
      @user = User.create!(email: "test@test.com", password: "peachschnapps")
      @product = Product.create!(name: "ring")
    end

    it "will not save" do
      expect(Comment.new(rating: 2, user: @user, product: @product)).not_to be_valid
    end
    it "will save" do
      expect(Comment.new(body: "it's ok", rating: 3, user: @user, product: @product)).to be_valid
    end
  end
end