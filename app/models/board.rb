class Board < ApplicationRecord
  has_many :rentals
  belongs_to :user
  has_one_attached :photo
  # validates :name, :height, :category, :price, presence: true
  validates :description, length: { maximum: 500 }
  validates :height, inclusion: { in: %w(small medium large) }
  validates :price, numericality: true
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
