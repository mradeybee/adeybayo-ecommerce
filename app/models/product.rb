class Product < ApplicationRecord
  monetize :price_cents
  belongs_to :user
  has_many :items

  validates_presence_of :name
end
