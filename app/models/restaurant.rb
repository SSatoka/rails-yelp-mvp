class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, :category, presence: true, allow_blank: false
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  has_many :reviews, dependent: :destroy
end
