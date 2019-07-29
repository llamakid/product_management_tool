class Product < ApplicationRecord
  has_many :properties, through: :product_properties
  has_many :product_properties, inverse_of: :product

  accepts_nested_attributes_for :properties, :product_properties

  validates :name, length: {maximum: 1024, message: "must be less than 1024 characters"}
  validates :name, uniqueness: {message: "this product name is already in use"}

  validates :upc, uniqueness: {message: "this upc name is already in use"}
  validates :upc, numericality: {message: "this upc is not a number", only_integer: true}
  validate :upc_length
  validate :availability

  def upc_length
    unless upc.size == 10 or upc.size == 12 or upc.size == 13 
        errors.add(:upc, "upc must be 10, 12, or 13 numbers long")
    end
end

def availability
  unless available_on > Date.today
      errors.add(:available_on, "must be a future date")
  end
end

end
