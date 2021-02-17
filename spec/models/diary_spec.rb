require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    user = FactoryBot.create(:user)
    @diary = FactoryBot.build(:diary, user_id: user.id)
    sleep 1
  end

  describe '日記投稿できる' do
    context '日記投稿できるとき' do
      it 'sentence,sleep,meal,motion,study,output,today_goal,margin,tired,refreshが存在すれば登録できる' do
        expect(@diary).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'sentenceが空では登録できない' do
        @diary.sentence = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('日記を入力してください')
      end
      it 'sleepが空では登録できない' do
        @diary.sleep = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('睡眠を入力してください')
      end
      it 'mealが空では登録できない' do
        @diary.meal = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('食事を入力してください')
      end
      it 'motionが空では登録できない' do
        @diary.motion = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('運動を入力してください')
      end
      it 'studyが空では登録できない' do
        @diary.study = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('勉強を入力してください')
      end
      it 'outputが空では登録できない' do
        @diary.output = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('アウトプットを入力してください')
      end
      it 'today_goalが空では登録できない' do
        @diary.today_goal = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('目標を入力してください')
      end
      it 'marginが空では登録できない' do
        @diary.margin = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('心の余裕を入力してください')
      end
      it 'tiredが空では登録できない' do
        @diary.tired = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('疲労感を入力してください')
      end
      it 'refreshが空では登録できない' do
        @diary.refresh = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include('リフレッシュを入力してください')
      end
    end
  end
end
