class AdoptionsController < ApplicationController

  before_action :current_adoption, only: [ :show, :edit, :update, :destroy ]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @adoption.update(adoption_params)

    redirect_to animals_path
  end

  def destroy
  end

  private

  def adoption_params
    params.require(:adoption).permit(:owner_name, :date_of_adoption)
  end

  def current_adoption
    @adoption = Adoption.find(params[:id])
    @animal = Animal.where(id: @adoption.animal_id).first
  end

end
