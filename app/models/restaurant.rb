class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  categories = ["chinese", "italian", "japanese", "french", "belgian", "Chinese", "Italian", "Japanese", "French", "Belgian"]
  validates :category, presence: true, inclusion: categories
end
