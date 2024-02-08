class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|           
      t.string :name                    # The name of the dog
      t.belongs_to :city, index: true   # Where the dog lives (show the index of the city from city table)
      t.timestamps                    
    end
  end
end
