class HouseholdAccount < ApplicationRecord
  validates :housing, :food, :utilities, :communication, :daily_goods,
            :clothing_beauty, :entertainment, :transportation,
            :health_medical, :education, :insurance, :special_expenses,
            presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 500 }
end
