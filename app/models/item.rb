class Item < ApplicationRecord
  validates :name, length: { maximum: 100 }
  validates :name, :description, :price, :color, :image, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }

  belongs_to :user
  has_many :reservations
end
