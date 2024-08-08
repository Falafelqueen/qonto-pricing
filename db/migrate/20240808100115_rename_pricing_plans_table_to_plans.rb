class RenamePricingPlansTableToPlans < ActiveRecord::Migration[7.1]
  def change
    rename_table :pricing_plans, :plans
    rename_column :plan_features, :pricing_plan_id, :plan_id
  end
end
