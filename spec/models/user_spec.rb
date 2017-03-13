require 'rails_helper'

  describe User do
    context "user will not be valid" do

      it "should not validate user without email" do
        @user =FactoryGirl.build(:user, email: "")
        expect(@user).not_to be_valid
      end
        
      it "should not validate user without valid email" do
        @user =FactoryGirl.build(:user, email: "no_email")
        expect(@user).not_to be_valid
      end

      it "should not validate user without password" do
        @user = FactoryGirl.build(:user, password: "")
        expect(@user).not_to be_valid
      end

      it "should validate user with valid email and password" do
        @user = FactoryGirl.build(:user)
        expect(@user).to be_valid
      end
    end
  end