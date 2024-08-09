require 'rails_helper'

RSpec.describe 'Plans', type: :system do
  let!(:featured_category) { FactoryBot.create(:category, featured: true) }
  let!(:other_category) { FactoryBot.create(:category) }

  def create_plans_for_category(category, count)
    FactoryBot.create_list(:plan, count, category:)
  end

  before do
    create_plans_for_category(featured_category, 3)
    create_plans_for_category(other_category, 3)
    visit plans_path
  end

  context 'when categories exist' do
    it 'shows all categories' do
      Category.all.each do |category|
        expect(page).to have_content(category.name)
      end
    end

    it 'shows all plans for the featured category by default' do
      featured_category.plans.each do |plan|
        expect(page).to have_content(plan.name)
      end

      other_category.plans.each do |plan|
        expect(page).not_to have_content(plan)
      end
    end
  end

  context 'filtering' do
    it 'clicking on a tab with category filters plans for that category' do
      expect(page).to have_field(other_category.name)

      tab = find('label', text: other_category.name)
      tab.click

      other_category.plans.each do |plan|
        expect(page).to have_content(plan.name)
      end

      featured_category.plans.each do |plan|
        expect(page).not_to have_content(plan.name)
      end
    end
  end
end
