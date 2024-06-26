class HouseholdAccount < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :month

  validates :housing, :food, :utilities, :communication, :daily_goods,
            :clothing_beauty, :entertainment, :transportation,
            :health_medical, :education, :insurance, :special_expenses,
            presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :total, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 500 }
  validates :year, inclusion: { in: 2024..2040 }
  validates :month_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :year, uniqueness: { scope: :month_id, message: "(and month) has already been taken. Please select a different date." }

end
