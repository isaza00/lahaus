class Api::V1::PhotosController < ApplicationController

  before_action :authorized, only: []

  #GET /api/v1/properties/<property_id>/photos
  def index
    begin
      property = Property.find(params[:property_id])
      photos = property.photos
      render json: {photos: photos}, status: :ok
    rescue => e
      render json: {errors: e.message}, status: 404
    end
  end

  def show
  end

  def destroy
  end

end
