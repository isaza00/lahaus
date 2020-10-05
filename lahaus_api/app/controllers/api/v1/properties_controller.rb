class Api::V1::PropertiesController < ApplicationController

  before_action :authorized, only: [:show]

  #GET /api/v1/users/<id>/properties/ or
  #GET /api/v1/properties
  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      properties = user.properties
    else
      properties = Property.all
    end
    render json: { properties: properties }, status: :ok
  end

  #DELETE /api/v1/properties/<property_id>
  def destroy
    begin
      property = Property.find(params[:property_id])
      if property.destroy
        render json: {}, status: :ok
      else
        render json: { errors: property.errors.messages }, status: 422
      end
    rescue => e
      render json: { errors: e.message}, status: 404
    end
  end

  #POST /api/v1/users/<id>/properties/
  def create
    user_id = params[:user_id]
    property = Property.new(property_params)
    property.user_id = user_id
    if property.save
      render json: property, status: :ok
    else
      render json: { errors: property.errors.messages }, status: 422
    end
  end

  private

  def property_params
    params.permit(:project, :built_type, :price, :address, :apt,
                  :tower, :hood, :city, :private_area,
                  :estrato, :beds, :baths, :contact_1, :user_id)
  end

end
