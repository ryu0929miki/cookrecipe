class Recipe < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments


  validates :image, presence: true
  validates :title, presence: true
  validates :material, presence: true
  validates :make, presence: true

  def self.search(search)
    if search != ""
      Recipe.where('title LIKE(?)', "%#{search}%")
    else
      Recipe.all
    end
  end
end
