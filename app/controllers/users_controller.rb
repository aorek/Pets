class UsersController < ApplicationController
  def show
    @user = User.find(params[:format])
  end

  def new
    @user = User.new
  end

  def create
    # render plain: params[:user].inspect
    @user = User.new(post_params)

    if(@user.save)
      redirect_to home_url
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:format])
    @user.destroy
    redirect_to home_url
  end

  private def post_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
