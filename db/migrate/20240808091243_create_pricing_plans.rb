class CreatePricingPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :pricing_plans do |t|
      t.string :name
      t.integer :price_cents
      t.integer :category
      t.string :description
      t.timestamps
    end
  end
end
