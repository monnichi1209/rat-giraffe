class RentalPropertiesController < ApplicationController
  def index
    @rental_properties = RentalProperty.all
  end

  def show
    @rental_property = RentalProperty.find(params[:id])
  end

  def new
    @rental_property = RentalProperty.new
  end

  def edit
    @rental_property = RentalProperty.find(params[:id])
  end

  def create
    @rental_property = RentalProperty.new(rental_property_params)

    if @rental_property.save
      redirect_to @rental_property
    else
      render :new
    end
  end

  def update
    @rental_property = RentalProperty.find(params[:id])

    if @rental_property.update(rental_property_params)
      redirect_to @rental_property
    else
      render :edit
    end
  end

  def destroy
    @rental_property = RentalProperty.find(params[:id])
    @rental_property.destroy

    redirect_to rental_properties_path
  end

  private

  def rental_property_params
  params.require(:rental_property).permit(:name)
  end
  end
