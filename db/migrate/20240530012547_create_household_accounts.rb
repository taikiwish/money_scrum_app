class CreateHouseholdAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :household_accounts do |t|
      t.integer   :year,              null: false
      t.integer   :month_id,          null: false
      t.integer   :housing,           null: false
      t.integer   :food,              null: false
      t.integer   :utilities,         null: false
      t.integer   :communication,     null: false
      t.integer   :daily_goods,       null: false
      t.integer   :clothing_beauty,   null: false
      t.integer   :entertainment,     null: false
      t.integer   :transportation,    null: false
      t.integer   :health_medical,    null: false
      t.integer   :education,         null: false
      t.integer   :insurance,         null: false
      t.integer   :special_expenses,  null: false
      t.integer   :total,             null: false
      t.text      :description

      t.timestamps
    end
  end
end
