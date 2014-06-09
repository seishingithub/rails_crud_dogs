class DogsController < ApplicationController

  def index
    @dog = Dog.new
    @dogs = Dog.all
  end

  def create
    @dog = Dog.create(dog_params)
    if @dog.save
      redirect_to dogs_path
    else
      render :index
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:dog_name, :dog_color)
  end
end