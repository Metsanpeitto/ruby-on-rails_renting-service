class Reservation < ApplicationRecord
  validates :city, length: { maximum: 100 }, presence: true
  validates :date, presence: true
  validates :user_id, numericality: { only_integer: true, greater_than: 0 }, presence: true
  validates :item_id, numericality: { only_integer: true, greater_than: 0 }, presence: true

  belongs_to :item, dependent: :destroy
  belongs_to :user
end
