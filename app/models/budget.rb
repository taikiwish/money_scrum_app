class Budget < ApplicationRecord
  validates :housing_budget, :food_budget, :utilities_budget, :communication_budget, :daily_goods_budget,
            :clothing_beauty_budget, :entertainment_budget, :transportation_budget,
            :health_medical_budget, :education_budget, :insurance_budget, :special_expenses_budget,
            presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :total_budget, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
