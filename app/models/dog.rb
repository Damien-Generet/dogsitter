class Dog < ApplicationRecord
  has_many :strolls  #  A dog can have many strolls.
  has_many :dog_sitters, through: :strolls # The dog can have more than on dogsitter
  belongs_to :city  #  Each dog is from a city.
end
