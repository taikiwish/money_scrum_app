## テーブル設計

### Users テーブル

| Column             | Type    | Options                       |
| ------------------ | ------- | ----------------------------- |
| nickname           | string  | null: false                   |
| email              | string  | null: false, unique: true     |
| encrypted_password | string  | null: false                   |
| gender_id          | integer | null: false                   |
| prefecture_id      | integer | null: false                   |
| age_id             | integer | null: false                   |

#### Association

- has_many :household_accounts
- has_many :comments

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
| user               | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- has_many :comments

### Comments テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| content              | text       | null: false                    |
| user                 | references | null: false, foreign_key: true |
| household_account    | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :household_account