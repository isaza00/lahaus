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

  # SHOW PHOTO BY ID /api/v1/properties/<property_id>/<photo_id>
  def show
    begin
      property = Property.find(params[:property_id])
      photos = property.photo_id
      render json: {photos: photos}
    rescue => e
      render json: { errors: e.message}, status: 404
    end
  end

  # DELETE BY ID /api/v1/properties/<property_id>/<photo_id>
  def destroy
    begin
      property = Property.find(params[:property_id])
      photos = property.photo_id
      if photos.destroy
        render json: {}, status: :ok
      else
        render json: { errors: property.errors.messages }, status: 422
      end
    rescue => e
      render json: { errors: e.message}, status: 404
    end
  end

end
