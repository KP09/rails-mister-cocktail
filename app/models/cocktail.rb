class Cocktail < ApplicationRecord
  # Model associations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # Attachinary file uploads
  has_attachment :photo

  # Model validations
  validates :name, presence: true, uniqueness: true
end
