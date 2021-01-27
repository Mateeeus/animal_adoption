class AnimalsController < ApplicationController
  include ApplicationHelper
  
  before_action :current_animal, only: [ :show, :edit, :update, :destroy ]
  before_action :current_adoption, only: [ :show ]

  def index
    if params[:filter_adopted].present? then
      @animals = Animal.where(adopted: params[:filter_adopted])
    else
      @animals = Animal.all
    end
  end

  def show
  end

  def new
    @animal = Animal.new
    @adoption = Adoption.new

    @animal.date_of_birth = data_br(Date.today)
  end

  def create
    animal = Animal.create(animal_params)
    adoption = Adoption.create(animal_id: animal.id)
    adoption.owner_name = "Nenhum"
    redirect_to animal_path(animal)
  end

  def edit
  end

  def update
    @animal.update(animal_params)

    redirect_to animal_path(@animal)
  end

  def destroy
    @adoption = Adoption.where(animal_id: @animal.id).first
    @adoption.destroy
    @animal.destroy

    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:id, :name, :slug, :date_of_birth, :type_animal, :adopted, :short_description, :full_description, :image_url)
  end

  def current_animal
    @animal = Animal.friendly.find(params[:id])
  end

  def current_adoption
    @adoption = Adoption.where(animal_id: @animal.id).first
  end

end
