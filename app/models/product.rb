class Product < ApplicationRecord
  validates :name, presence: true  # ensure that all products must have a name
end
