require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { FactoryBot.create(:category) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'scopes' do
    let(:category) { FactoryBot.create(:category) }
    let(:featured_category) { FactoryBot.create(:category, featured: true) }

    context 'featured' do
      it 'returns only featured categories' do
        expect(Category.featured).to eq([featured_category])
      end
    end
  end
end
