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

  # SHOW PHOTO BY ID /api/v1/photos/<photo_id>
  def show
    begin
      photo = Property.find(params[:photo_id])
      render json: {photo: photo}, status: :ok
    rescue => e
      render json: { errors: e.message}, status: 404
    end
  end

  # DELETE BY ID /api/v1/photos/<photo_id>
  def destroy
    begin
      photo = Property.find(params[:photo_id])
      if photo.destroy
        render json: {}, status: :ok
      else
        render json: { errors: photo.errors.messages }, status: 422
      end
    rescue => e
      render json: { errors: e.message}, status: 404
    end
  end

end
