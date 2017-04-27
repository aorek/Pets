class UsersController < ApplicationController
  def show
    @user = User.find(params[:format])
  end

  def new
    @user = User.new
  end

  def create
    # render plain: params[:user].inspect
    @user = User.new(entry_params)

    if(@user.save)
      redirect_to home_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:format])
  end

  def update
    @user = User.find(params[:format])

    if(@user.update(entry_params))
      redirect_to users_url(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:format])
    @user.destroy
    redirect_to home_url
  end

  private def entry_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
