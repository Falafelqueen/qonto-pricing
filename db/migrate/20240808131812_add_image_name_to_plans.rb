class AddImageNameToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :image_name, :string
  end
end
