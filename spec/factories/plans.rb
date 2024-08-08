FactoryBot.define do
  factory :plan do
    name { 'Test plan' }
    description { 'Great test plan for everyone who tests' }
    price_cents { 1000 }
    association :category
  end
end
