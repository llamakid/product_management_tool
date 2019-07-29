class ProductProperty < ApplicationRecord
  belongs_to :product
  belongs_to :property

  accepts_nested_attributes_for :product, :property
  validates :value, length: {maximum: 255, message: "must be less than 255 characters"}

  def property_attributes=(attributes)
    self.property = Property.find_or_create_by(name: attributes[:name])
  end  
end
