class Plan < ApplicationRecord
  validates_presence_of :name, :description, :price_cents
  validates_numericality_of :price_cents, greater_than: 0

  belongs_to :category
  has_many :plan_features, dependent: :destroy
  has_many :features, through: :plan_features

  scope :filter_by_category, ->(category) { where(category:) }

  def price
    # Returns the price cents in full currency
    price_cents.fdiv(100)
  end
end
