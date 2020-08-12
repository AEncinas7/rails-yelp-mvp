class RestaurantsController < ApplicationController
    
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # PARAMS: {"restaurant"=>{"name"=>"Sol y Mar", "address"=>"123 St Hubert", "category"=>"japanese", "phone_number"=>"23 43 66 23 01"}}
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
