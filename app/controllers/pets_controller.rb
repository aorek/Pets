class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    # render plain: params[:user].inspect
    @pet = Pet.new(entry_params)

    if(@pet.save)
      redirect_to home_url
    else
      render 'new'
    end
  end
end
