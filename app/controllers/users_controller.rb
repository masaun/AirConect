class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @rooms = @user.rooms
  end

  private

    def user_params
      params.require(:user).permit(:fullname, :phone_number)
    end

end
