## テーブル設計

### HouseholdAccounts テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| month_id           | integer    | null: false                    |
| housing            | integer    | null: false                    |
| food               | integer    | null: false                    |
| utilities          | integer    | null: false                    |
| communication      | integer    | null: false                    |
| daily_goods        | integer    | null: false                    |
| clothing_beauty    | integer    | null: false                    |
| entertainment      | integer    | null: false                    |
| transportation     | integer    | null: false                    |
| health_medical     | integer    | null: false                    |
| education          | integer    | null: false                    |
| insurance          | integer    | null: false                    |
| special_expenses   | integer    | null: false                    |
| total              | integer    | null: false                    |
| description        | text       |                                |

#### Association
- has_one :budget
- has_many :comments

### Budgets テーブル

| Column                    | Type       | Options                        |
| ------------------------- | ---------- | ------------------------------ |
| housing_budget            | integer    | null: false                    |
| food_budget               | integer    | null: false                    |
| utilities_budget          | integer    | null: false                    |
| communication_budget      | integer    | null: false                    |
| daily_goods_budget        | integer    | null: false                    |
| clothing_beauty_budget    | integer    | null: false                    |
| entertainment_budget      | integer    | null: false                    |
| transportation_budget     | integer    | null: false                    |
| health_medical_budget     | integer    | null: false                    |
| education_budget          | integer    | null: false                    |
| insurance_budget          | integer    | null: false                    |
| special_expenses_budget   | integer    | null: false                    |
| total_budget              | integer    | null: false                    |

#### Association
- has_many :household_accounts
- has_many :comments

### Comments テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| content              | text       | null: false                    |
| household_account    | references | null: false, foreign_key: true |

#### Association

- belongs_to :household_account