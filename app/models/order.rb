class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user

  validates :status, presence: true, inclusion: { in: [
    "waiting for payment",
    "ready for shipping",
    "shipping",
    "delivered"
  ] }
end
