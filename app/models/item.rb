class Item < ApplicationRecord
  belongs_to :category
  has_many   :cart_items
  has_many   :carts, through: :cart_items

  validates :category, presence: true
  # Цена должна быть больше нуля
  validates :price, numericality: {greater_than: 0, allow_nil: true}
  validates :name, :price, :weight, :description, presence: true
end
