class Diary < ApplicationRecord
    enum sleep: { 全く眠れなかった: 0, 少し眠れなかった: 8, 眠れた: 15, 少し眠れた: 22, よく眠れた: 30 }
    enum meal: { 食欲がなかった: 0, 野菜は摂れなかった: 8, 少し野菜が摂れた: 15, 意識して野菜を摂れた: 22, バランス良く摂れた: 30 }
    enum motion: { 運動しなかった: 0, 少し運動した: 8, ３０分以上は運動した: 15, １時間は運動した: 22, ２時間は運動した: 30 }
    enum study: { 勉強できなかった: 0, ３０分勉強した: 8, １時間勉強した: 15, ２時間勉強した: 22, ３時間以上勉強した: 30 }
    enum output: { 何もアウトプットできなかった: 0, ツイッターなどでアウトプットした: 8, 誰かと専門的な話をした: 15, 知り合いに勉強を教えた: 22, 他人に勉強を教えた: 30 }
    enum today_goal: { 目標は達成されなかった: 0, 目標を達成できそうだった: 8, 今日の目標を達成した: 15, 今週の目標も達成した:22, 今月の目標も達成した: 30 }
    enum margin: { 心の余裕がない: 0, 少し心の余裕がない: 8, 少し心の余裕がある: 15, 心の余裕がある: 22, だいぶ心の余裕がある: 30 }
    enum tired: { まったく動けない: 0, 疲れて動けない: 8, 少し疲れた: 15, 疲れを感じなかった: 22, むしろ元気になった: 30 }
    enum refresh: { リフレッシュする時間がなかった: 0, 少しだけリフレッシュした: 8, リフレッシュした: 15, 半日リフレッシュできた: 22, １日リフレッシュできた: 30 }
  
  with_options presence: true do
    validates :sentence
    validates :sleep
    validates :meal
    validates :motion
    validates :study
    validates :output
    validates :today_goal
    validates :margin
    validates :tired
    validates :refresh
  end

  belongs_to :user
  has_one :status
end
