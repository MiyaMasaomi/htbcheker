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
| refresh    | integer  | null: false                  |
| output     | integer  | null: false                  |
| today_goal | integer  | null: false                  |
| start_time | integer  | null: false                  |
| user       |references|null: false, foreign_key: true|
| status     |references| null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :status

## statuses テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| heart     | integer    | null: false                    |
| technique | integer    | null: false                    |
| body      | integer    | null: false                    |

### Association

- belongs_to :user
- belongs_to :diary



### htbcheker概要

アプリケーション名：htbcheker（ハテボチェッカー）

アプリケーション概要：会員登録することで、日記を書くことができ、その日の自分の状態を点数にして可視化する事ができます。
                  また、日々日記を書いていくことで平均的に自分はどれくらいの点数なのかも自分のトップページから確認する事ができます。

URL：

