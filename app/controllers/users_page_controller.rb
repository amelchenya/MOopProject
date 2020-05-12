class UsersPageController < ApplicationController
    def index
        @users=User.all
      end
 
      def show
       
        @user = User.find(params[:id])
        @boughts = Bought.where(user_id: @user.id)
      end
 
 
   def destroy
       if  current_user.roll =="admin" || current_user.username == @user.username
        @user=User.find(params[:id])
        @user.destroy
        redirect_to posts_path
       else
         redirect_to posts_path
       end
   end
 
      def edit
        @user=User.find(params[:id])
      end
 
   def update
        @user=User.find(params[:id])
     if  current_user.roll =="admin" || current_user.username == @user.username
         if @user.update_attributes(user_params)
              redirect_to users_page_path
         else
               render :edit
         end
     else
         redirect_to users_page_path
     end
   end
 
 
      private  def user_params
        params.require(:user).permit(:email,:username,:roll)
      end
end
