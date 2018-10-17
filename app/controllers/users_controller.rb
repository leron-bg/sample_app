class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # Use 'strong parameters' to allow only wanted user properties
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'Welcome to Mitko\'s app!'
      redirect_to @user #short for user_url(@user)
    else
      render 'new'
    end
  end

  private

  def user_params
      params.require(:user).permit(:name, 
                                   :email, 
                                   :password,
                                   :password_confirmation)
  end
end
