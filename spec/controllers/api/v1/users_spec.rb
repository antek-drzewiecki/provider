require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'GET #me' do
    #let(:token) { double :acceptable? => true }
    let!(:application) { FactoryGirl.create :application }
    let!(:user)        { FactoryGirl.create :user }
    let!(:token)       { FactoryGirl.create :access_token, :application => application, :resource_owner_id => user.id }


    it 'responds with 200' do
      #get :me, :format => :json, 'HTTP_AUTHORIZATION' => "Bearer #{token.token}"
      get :me, format: :json, params: { access_token: token.token }
      expect(response.status).to eq(200)
    end

    it 'responds with 401 on unauthenticated requests' do
      get :me, format: :json
      expect(response.status).to eq(401)
    end

    it 'returns with the user as response' do
      get :me, format: :json, params: { access_token: token.token }
      expect(response.body).to eq user.to_json
    end
  end

end

