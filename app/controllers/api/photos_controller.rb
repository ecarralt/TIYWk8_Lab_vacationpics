class Api::PhotosController < ApplicationController

  protect_from_forgery with: :null_session

  before_action :doorkeeper_authorize!

  before_action do
    request.format = :json
  end

  def index
    if doorkeeper_token
      @current_user = User.find(doorkeeper_token.resource_owner_id)
      # @photos = @current_user.photos
    else
      render json: {error: "could not get your photos, please try again}"}, status: 422
    end
  end


end
