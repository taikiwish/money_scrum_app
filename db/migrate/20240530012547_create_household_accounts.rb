class CreateHouseholdAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :household_accounts do |t|

      t.timestamps
    end
  end
end
