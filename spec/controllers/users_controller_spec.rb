require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = FactoryGirl.create(:user)
    @user2 = FactoryGirl.create(:user)
  end
  describe 'GET #show' do
    context 'user is logged in' do
      before do
        sign_in @user
      end

      it 'loads correct user details' do
        get :show, params: {id: @user.id}
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end

      it 'will not show user2 details' do
        get :show, params: {id: @user2.id}
        expect(response).to redirect_to(root_path)
      end
    end

    context 'no user logged in' do
      it 'redirects to login' do
        get :show, params: {id: @user.id}
        expect(response).to redirect_to('/login')
      end
    end
  end

end