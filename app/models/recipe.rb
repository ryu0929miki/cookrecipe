class Recipe < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name, presence: true
  validates :image, presence: true
  validates :title, presence: true
  validates :material, presence: true
  validates :make, presence: true
end
