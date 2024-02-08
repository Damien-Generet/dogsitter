class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.belongs_to :dog_sitter, index: true, foreign_key: true #the dog sitter with index
      t.belongs_to :dog, index: true, foreign_key: true # the dog that is being walked with index
      t.belongs_to :city, index: true, foreign_key: true # The city where the walk will take place with index
      t.timestamps
    end
  end
end
