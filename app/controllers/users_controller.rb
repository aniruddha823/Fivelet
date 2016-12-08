class UsersController < ApplicationController
	def index
		@user = current_user.find(params[:user_id])
		@fivelets = @user.fivelets
    # @user = User.find(params[:id])
    # @fivelets = @user.fivelets
  end

  def follow
    @user = User.find(params[:id])
    current_user.follow(@user)
    redirect_to :back
  end
end
