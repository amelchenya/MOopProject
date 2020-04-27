class ProductsController < ApplicationController
    before_action :authenticate_user!, except:[:index,:show]
 
    def index
      @products=Product.where(["name LIKE ?","%#{params[:search]}%"]).order(params[:sort])
    end
  
  
    def show
      @product=Product.find(params[:id])
    end
  
    def new
      @product = Product.new
    end
    def edit
        @product=Product.find(params[:id])
    end
  
    def update
      @product=Product.find(params[:id])
      if @product.update_attributes(product_params)
        redirect_to @product
      else
        flash[:error] = "Ошибка"
        render :edit
      end
    end
  
  
      def create
        @product = Product.new(product_params)
  
        if @product.save
          redirect_to @product
          flash[:success] =   "Успешно"
        else
            flash[:error] =  "Ошибка"
          render :new
        end
       end
  
    def destroy
        @product=Product.find(params[:id])
      if  (current_user.roll =="admin")
        @products.destroy
        redirect_to posts_path
      else
        flash[:error] =  "Ошибка"
        redirect_to products_path
      end
    end
  
 
      private  def product_params
        params.require(:product).permit(:name,:body,:picture,:about,:cost,:url)
      end
  
end
