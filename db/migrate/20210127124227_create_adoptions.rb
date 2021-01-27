class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.string :owner_name
      t.date :date_of_adoption

      t.timestamps
    end
  end
end
