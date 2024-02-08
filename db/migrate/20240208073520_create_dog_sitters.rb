class CreateDogSitters < ActiveRecord::Migration[7.1]
  def change
    create_table :dog_sitters do |t|
      t.string :first_name  # First name of the dog sitter
      t.string :last_name #  Last name of the dog sitter
      t.belongs_to :city, index: true #  City where the dog sitter lives with index from city table
      t.timestamps
    end
  end
end
