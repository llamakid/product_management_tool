class Property < ApplicationRecord
  has_many :products, through: :product_properties
  has_many :product_properties, inverse_of: :property

  accepts_nested_attributes_for :products, :product_properties
end
