class UsersController < ApplicationController

  def show

    if user_signed_in?
      if current_user == @user
        redirect_to edit_user_registration_path
      else
        @user = User.find(params[:id])
      end
    else
      redirect_to new_user_registration_path
    end

  end


end
