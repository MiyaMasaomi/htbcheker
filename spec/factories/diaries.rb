FactoryBot.define do
  factory :diary do
    sentence      { 'テスト' }
    sleep         { '眠れた' }
    meal          { '少し野菜が摂れた' }
    motion        { '３０分以上は運動した' }
    study         { '１時間勉強した' }
    output        { 'ツイッターなどでアウトプットした' }
    today_goal    { '目標を達成できそうだった' }
    margin        { '少し心の余裕がある' }
    tired         { '少し疲れた' }
    refresh       { '少しだけリフレッシュした' }
  end
end
