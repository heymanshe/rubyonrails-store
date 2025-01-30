class Product < ApplicationRecord
  has_rich_text :description
  validates :name, presence: true  # ensure that all products must have a name
end
