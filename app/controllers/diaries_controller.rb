class DiariesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_diary, only: %i[show destroy edit update]
  before_action :different_diary, only: %i[edit update destroy]

  def index
    if user_signed_in?
      @diaries = Diary.where(user_id: current_user.id)
      @sleep_average = @diaries.average(:sleep)
      @meal_average = @diaries.average(:meal)
      @motion_average = @diaries.average(:motion)
      @study_average = @diaries.average(:study)
      @output_average = @diaries.average(:output)
      @today_average = @diaries.average(:today_goal)
      @margin_average = @diaries.average(:margin)
      @tired_average = @diaries.average(:tired)
      @refresh_average = @diaries.average(:refresh)
    end
  end

  def new
    @diary = Diary.new
  end

  def show
    @sleep = @diary.sleep_before_type_cast
    @meal = @diary.meal_before_type_cast
    @motion = @diary.motion_before_type_cast
    @study = @diary.study_before_type_cast
    @output = @diary.output_before_type_cast
    @today_goal = @diary.today_goal_before_type_cast
    @margin = @diary.margin_before_type_cast
    @tired = @diary.tired_before_type_cast
    @refresh = @diary.refresh_before_type_cast
    @body = @sleep + @meal + @motion
    @technique = @study + @output + @today_goal
    @heart = @margin + @tired + @refresh
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @diary.user_id == current_user.id
      @diary.destroy
      redirect_to root_path, notice: '削除しました'
    end
  end

  def edit; end

  def update
    if @diary.update(diary_params)
      redirect_to diaries_path, notice: '編集しました'
    else
      render :edit
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:sentence, :sleep, :meal, :motion, :study, :output, :today_goal, :margin, :tired,
                                  :refresh, :start_time).merge(user_id: current_user.id)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end

  def different_diary
    redirect_to action: :index if current_user.id != @diary.user_id
  end
end
