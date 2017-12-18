
  class Api::V1::PostsController < ::ApplicationController
    before_action :doorkeeper_authorize!
    respond_to     :json

    def index
      respond_with current_resource_owner.posts
    end

    private

    # Find the user that owns the access token
    def current_resource_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
