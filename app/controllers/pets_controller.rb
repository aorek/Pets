class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    # render plain: params[:user].inspect
    @pet = Pet.new(entry_params)
    @user = User.find(params[:id])

    if(@pet.save)
      redirect_to users_url(@user)
    else
      render 'new'
    end
  end

  private def entry_params
    params.require(:pet).permit(:name, :gender, :age, :alive, :user_id, :pet_type_id)
  end
end
