class RemoveCategoryFromPricingPlans < ActiveRecord::Migration[7.1]
  def change
    remove_column :pricing_plans, :category, :integer
  end
end
