FactoryBot.define do
  factory :budget do
    housing_budget { Faker::Number.between(from: 0, to: 100000) }
    food_budget { Faker::Number.between(from: 0, to: 100000) }
    utilities_budget { Faker::Number.between(from: 0, to: 100000) }
    communication_budget { Faker::Number.between(from: 0, to: 100000) }
    daily_goods_budget { Faker::Number.between(from: 0, to: 100000) }
    clothing_beauty_budget { Faker::Number.between(from: 0, to: 100000) }
    entertainment_budget { Faker::Number.between(from: 0, to: 100000) }
    transportation_budget { Faker::Number.between(from: 0, to: 100000) }
    health_medical_budget { Faker::Number.between(from: 0, to: 100000) }
    education_budget { Faker::Number.between(from: 0, to: 100000) }
    insurance_budget { Faker::Number.between(from: 0, to: 100000) }
    special_expenses_budget { Faker::Number.between(from: 0, to: 100000) }
    total_budget { Faker::Number.between(from: 0, to: 1000000) }
  end
end