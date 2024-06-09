FactoryBot.define do
  factory :household_account do
    year { Faker::Number.between(from: 2024, to: 2040) }
    month_id { Faker::Number.between(from: 2, to: 12) }
    housing { Faker::Number.between(from: 0, to: 1_000_000) }
    food { Faker::Number.between(from: 0, to: 1_000_000) }
    utilities { Faker::Number.between(from: 0, to: 1_000_000) }
    communication { Faker::Number.between(from: 0, to: 1_000_000) }
    daily_goods { Faker::Number.between(from: 0, to: 1_000_000) }
    clothing_beauty { Faker::Number.between(from: 0, to: 1_000_000) }
    entertainment { Faker::Number.between(from: 0, to: 1_000_000) }
    transportation { Faker::Number.between(from: 0, to: 1_000_000) }
    health_medical { Faker::Number.between(from: 0, to: 1_000_000) }
    education { Faker::Number.between(from: 0, to: 1_000_000) }
    insurance { Faker::Number.between(from: 0, to: 1_000_000) }
    special_expenses { Faker::Number.between(from: 0, to: 1_000_000) }
    total { Faker::Number.between(from: 0, to: 12_000_000) }
    description { Faker::Lorem.sentence }
  end
end