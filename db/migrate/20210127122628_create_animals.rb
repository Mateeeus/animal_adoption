class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.date :date_of_birth
      t.string :type_animal
      t.boolean :adopted
      t.string :short_description
      t.string :full_description

      t.timestamps
    end
  end
end
