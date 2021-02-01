class Animal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :animalimage
end
