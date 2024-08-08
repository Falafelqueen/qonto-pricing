class AddCategoryReferenceToPricingPlans < ActiveRecord::Migration[7.1]
  def change
    add_reference :pricing_plans, :category, null: false, foreign_key: true
  end
end
