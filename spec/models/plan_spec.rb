require 'rails_helper'

RSpec.describe Plan, type: :model do
  subject { FactoryBot.create(:plan) }
  let(:category) { FactoryBot.create(:category) }
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price_cents) }
    it { is_expected.to validate_numericality_of(:price_cents).is_greater_than(0) }
  end

  describe 'scopes' do
    context 'filter_by_category' do
      let(:selected_plan) { FactoryBot.create(:plan, category: category) }
      let(:other_category) { FactoryBot.create(:category) }
      let(:other_plan) { FactoryBot.create(:plan) }

      it 'returns only the plans with the given category_id' do
        expect(Plan.filter_by_category(category.id)).to include(selected_plan)
        expect(Plan.filter_by_category(category.id)).not_to include(other_plan)
      end
    end
  end

  describe '#price' do
    it 'returns the price in full currency' do
      expect(subject.price).to eq(10)
    end

    it 'returns a float fx. 1050 -> 10.50' do
      subject.price_cents = 1050
      expect(subject.price).to be_a(Float)
      expect(subject.price).to eq(10.50)
    end
  end
end
