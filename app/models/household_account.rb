class HouseholdAccount < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :month

  validates :housing, :food, :utilities, :communication, :daily_goods,
            :clothing_beauty, :entertainment, :transportation,
            :health_medical, :education, :insurance, :special_expenses,
            presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :total, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 500 }
  validates :year, inclusion: { in: 2024..2040 }
  validates :month_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :year, uniqueness: { scope: :month_id, message: "(and month) has already been taken. Please select a different date." }

  def achievement_rate(budget)
    (total.to_f / budget.total_budget * 100).round(2)
  end

  def rank(budget)
    rate = achievement_rate(budget)
    case rate
    when 90..100
      'S'
    when 80...90
      'A'
    when 70...80
      'B'
    when 60...70
      'C'
    else
      'D'
    end
  end
end
