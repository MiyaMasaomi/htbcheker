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


# htbcheker概要

## アプリケーション名
htbcheker（ハテボチェッカー）

## アプリケーション概要
会員登録することで、日記を書くことができ、その日の自分の状態を点数にして可視化する事ができます。  
また、日々日記を書いていくことで平均的に自分はどれくらいの点数なのかも自分のトップページから確認する事ができます。  

URL：https://htbcheker.herokuapp.com/  

## BASIC認証
ユーザー名：masaomi  
パスワード：1111  

## テスト用アカウント
メールアドレス：test1@sample.com  
パスワード：aaaaaa  

## 利用方法
日記を投稿する事ができます。  
その後、投稿した日記の情報を元に精神・技術・体力を点数化したものがトップページに表示されます。  
個々の情報を見たい場合は、カレンダーの中かブラウザ下の最近書いた日記の中から選んで見る事ができます。  
また、点数によって必要とされる情報をオススメの動画として表示されます。  

## 目指した課題解決
近年、ストレス社会と呼ばれるくらい自分をコントロールすることが難しい世の中になりました。  
そこで、ハテボチェッカーを利用することで自分の体力・技術・精神がどれくらいなのかを点数し、自分の状態を客観的に見る事ができます。  
自分の状態を把握して、今日の目標やスケジュールを立てるのにお役立てください。  

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1_y6e1EzTwy9NTcgHYfik38jlXspOlDjf30KWWxjwxak/edit?usp=sharing

## GitHubのリポジトリURL
https://github.com/MiyaMasaomi/htbcheker.git

## 実装した機能についてのGIFと説明

トップページから日記を書くまでのGIF
https://i.gyazo.com/2fc71b234fa3c8066fe668b6065f7345.gif

日記投稿から詳細ページまでのGIF
https://i.gyazo.com/7aa1524efdf425d9838260254457cded.gif


## 実装予定の機能

日記の文章から点数化ができる機能を追加したいが、知識不足のため現状は保留。  
知識が増えたら実装する予定。

## データベース設計
https://i.gyazo.com/584404b845733075aa9a786857d30ba7.png

## ローカルでの動作方法

ruby 2.6.5  
rails 6.0.3.4  

git clone https://github.com/MiyaMasaomi/htbcheker.git  

bundle install  

rails db:migrate  

rails s  
