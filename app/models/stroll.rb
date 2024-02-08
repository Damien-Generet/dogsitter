class Stroll < ApplicationRecord
  belongs_to :dog_sitter # One dog_sitter for his walk
  belongs_to :dog #  Many dogs can be walked at once
  belongs_to :city  #  City where the stroll takes place.
end
