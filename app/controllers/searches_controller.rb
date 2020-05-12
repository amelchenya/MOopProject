class SearchesController < ApplicationController

def new 
    @products=Product.where(["name LIKE ?","%#{params[:search]}%"]).order(params[:sort])
    @search=Search.new

end
def create
    @search=Search.create(search_params)
    redirect_to @search
end
def show
@search=Search.find(params[:id])
end
private
 def search_params
params.require(:search).permit(:keywords,:min_price,:max_price,:category_id) 
end

end
