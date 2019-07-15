class Product < ApplicationRecord
  has_many :properties, through: :product_properties
  has_many :product_properties, inverse_of: :product

  accepts_nested_attributes_for :properties, :product_properties

end
