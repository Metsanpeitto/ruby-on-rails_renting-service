class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  validates :name, :role, presence: true

  has_many :items, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
