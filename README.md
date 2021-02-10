# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| nickname   | string | null: false |

### Association

- has_many :diaries
- has_many :statuses

## diaries テーブル

| Column     | Type     | Options                      |
| ---------- | -------- | -----------                  |
| sentence   | text     | null: false                  |
| sleep      | integer  | null: false                  |
| meal       | integer  | null: false                  |
| motion     | integer  | null: false                  |
| study      | integer  | null: false                  |
| margin     | integer  | null: false                  |
| tired      | integer  | null: false                  |
| dream      | integer  | null: false                  |
| output     | integer  | null: false                  |
| today_goal | integer  | null: false                  |
| datetime   | integer  | null: false                  |
| user       |references|null: false, foreign_key: true|
| status     |references| null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :status

## statuses テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| heart     | integer    | null: false                    |
| technique | integer    | null: false                    |
| body      | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :diary