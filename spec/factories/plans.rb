FactoryBot.define do
  factory :plan do
    sequence(:name) { |n| "Test plan #{n}" }
    description { 'Great test plan for everyone who tests' }
    price_cents { 1000 }
    association :category

    trait :with_features do
      after(:create) do |plan|
        create_list(:feature, 3, plan:)
      end
    end
  end
end
