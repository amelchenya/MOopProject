class CategoriesController < ApplicationController
    before_action :authenticate_user!, except:[:index,:show]
    before_action :set_category ,only: [:show,:edit,:update,:destroy]



    def index
      @categories=Category.all
    end

    def new
     @category=Category.new
    end

    def show
    end


  def edit
  end

  def update
    if @category.update_attributes(category_params)
    redirect_to categories_path
    else
      render :edit
  end
  end

    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to @category
        flash[:success] = "Успешно"
      else
        render :new
      end
     end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

    private  def category_params
      params.require(:category).permit(:name)
    end
def set_category
  @category=Category.find(params[:id])
end

end
