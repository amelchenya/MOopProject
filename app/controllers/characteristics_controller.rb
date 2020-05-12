class CharacteristicsController < ApplicationController
    before_action :authenticate_user!, except:[:index,:show]
    before_action :set_product, only: [:create, :update, :destroy]
   def index
  
   end
  
  def new
   @characteristic=Characteristic.new
  end
  
  
  
  def show
   @product = Product.find(params[:id])
   @characteristic = Characteristic.where(product_id: @product.id)
  end
  
  def create
    @characteristic = @product.characteristics.create(characteristic_params)
        if @product.save
          redirect_to @product
        else
          render :new
        end
  end
  
  def destroy
   
    @characteristic = Characteristic.find(params[:id])
    @characteristic.destroy
     redirect_to @product
  end
  
  
  def set_product
    @product = Product.find(params[:product_id])
  end
  
  def characteristic_params
  params.require(:characteristic).permit(:name,:about)
  end

end
