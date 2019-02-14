class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags


  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true


end
