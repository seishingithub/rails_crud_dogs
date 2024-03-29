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

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update_attributes!(dog_params)

    redirect_to dogs_path
  end

  def destroy
    @dog = Dog.find(params[:id]).delete

    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:dog_name, :dog_color)
  end
end