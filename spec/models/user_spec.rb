require 'rails_helper'

  describe User do
    context "user will not be valid" do

      it "will not be valid" do
        expect(User.new(password: "peachschnapps")).not_to be_valid
      end
        
      it "will not be valid" do
        expect(User.new(email: "noemail", password: "peachschnapps")).not_to be_valid
      end

      it "will not be valid" do
        expect(User.new(email: "test@test.com")).not_to be_valid
      end

      it "will be valid" do
        expect(User.new(email: "test@test.com", password: "peachschnapps")).to be_valid
      end
    end
  end