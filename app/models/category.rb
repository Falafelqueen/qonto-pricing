class Category < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :plans, dependent: :destroy
  scope :featured, -> { find_by(featured: true) }
end
