require 'rails_helper'

RSpec.describe Api::V1::PostsController, type: :controller do
  describe 'GET #me' do
    #let(:token) { double :acceptable? => true }
    let!(:application) { FactoryGirl.create :application }
    let!(:user)        { FactoryGirl.create :user }
    let!(:token)       { FactoryGirl.create :access_token, :application => application, :resource_owner_id => user.id }
    let(:post)         { FactoryGirl.create :post, user: user }


    it 'responds with 200' do

      get :index, format: :json, params: { access_token: token.token }
      expect(response.status).to eq(200)
    end

    it 'responds with 401 on unauthenticated requests' do
      get :index, format: :json
      expect(response.status).to eq(401)
    end

    it 'returns with the user as response' do
      post
      get :index, format: :json, params: { access_token: token.token }
      expect(response.body).to eq [post].to_json
    end
  end

end

