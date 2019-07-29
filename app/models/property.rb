class Property < ApplicationRecord
  has_many :products, through: :product_properties
  has_many :product_properties, inverse_of: :property

  accepts_nested_attributes_for :products, :product_properties

  validates :name, length: {maximum: 255, message: "must be less than 255 characters"}
  validates :name, uniqueness: {message: "this property name is already in use"}
end
