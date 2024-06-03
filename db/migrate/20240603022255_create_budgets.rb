class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.integer :housing_budget, null: false
      t.integer :food_budget, null: false
      t.integer :utilities_budget, null: false
      t.integer :communication_budget, null: false
      t.integer :daily_goods_budget, null: false
      t.integer :clothing_beauty_budget, null: false
      t.integer :entertainment_budget, null: false
      t.integer :transportation_budget, null: false
      t.integer :health_medical_budget, null: false
      t.integer :education_budget, null: false
      t.integer :insurance_budget, null: false
      t.integer :special_expenses_budget, null: false
      t.integer :total_budget, null: false

      t.timestamps
    end
  end
end
