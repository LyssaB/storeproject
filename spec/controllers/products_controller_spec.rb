require 'rails_helper'

describe ProductsController, type: :controller do
  before do
    @admin = FactoryGirl.create(:admin)
  end
  describe "creates new product" do
    before do
      sign_in @admin
    end
    it "saves new product" do
      expect{
        post :create, product: FactoryGirl.attributes_for(:product)}.to change(Product, :count).by 1
    end
  end

  describe "does not save product" do
      it "does not save product without admin" do
      expect{ 
        post :create, product: FactoryGirl.attributes_for(:product)}.to change(Product, :count).by 0
    end
  end
end