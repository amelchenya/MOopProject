class BoughtsController < ApplicationController
   
        def new
        
            @bought = current_user.boughts.build
          end
    
    
          def create
            @bought = current_user.boughts.build(bought_params)
            @bought.save
              redirect_to wains_path
          end
    
         
    
    private  def bought_params
           params.require(:bought).permit(:name,:number_tel,:street,:payment,:deliver)
         end
    

end
