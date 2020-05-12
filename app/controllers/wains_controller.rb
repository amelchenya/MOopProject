class WainsController < ApplicationController

  before_action :set_post, only: [:new,:create, :update, :destroy,:edit,:show]

  def index
   
    @wains = Wain.where(user_id: current_user.id)
  end
    def new
    
        @wain = current_user.wains.build
      end


      def create
        @wain = current_user.wains.build(wain_params)
        @wain.save
          redirect_to wains_path
      end

      def destroy
        @wain=Wain.find(params[:id])
        @wain.destroy
        redirect_to wains_path
     
    end

private  def wain_params
       params.require(:wain).permit(:name,:count,:id_product,:image,:cost)
     end

 def set_post
       @product = Product.find(params[:product_id])
     end
    
end
