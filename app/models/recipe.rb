class Recipe < ApplicationRecord
  has_one_attached :image


  validates :title, presence: true
  validates :material, presence: true
  validates :make, presence: true
end
