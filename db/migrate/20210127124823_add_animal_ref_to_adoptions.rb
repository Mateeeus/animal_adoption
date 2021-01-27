class AddAnimalRefToAdoptions < ActiveRecord::Migration[6.0]
  def change
    add_reference :adoptions, :animal, null: false, foreign_key: true
  end
end
