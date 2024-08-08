class AddFeaturedToCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :featured, :boolean, default: false
  end
end
