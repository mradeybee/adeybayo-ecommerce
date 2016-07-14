class User < ApplicationRecord
  has_many :products
  has_many :categories
  has_many :orders
  belongs_to :cart, optional: true
end
