class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :link, presence: true
  validates :calories, presence: true
  validates :sugar, presence: true
  validates :fat, presence: true
  validates :type, presence: true

  has_many :user_recipes
  has_many :users, through: :user_recipes
end
