FactoryBot.define do
  factory :plan_feature do
    association :plan
    association :feature
  end
end
