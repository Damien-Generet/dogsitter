class DogSitter < ApplicationRecord
  has_many :strolls   #  The strolls that this dogsitter is taking care of. 
  has_many :dogs, through: :strolls #  All the dogs in the strolls that this dogsitter is taking care of.
  belongs_to :city  #   City where the dogsitter lives. INDEX from table city
end
