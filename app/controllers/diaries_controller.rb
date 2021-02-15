class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
    @sleep_average = Diary.average(:sleep)
    @meal_average = Diary.average(:meal)
    @motion_average = Diary.average(:motion)
    @study_average = Diary.average(:study)
    @output_average = Diary.average(:output)
    @today_average = Diary.average(:today_goal)
    @margin_average = Diary.average(:margin)
    @tired_average = Diary.average(:tired)
    @refresh_average = Diary.average(:refresh)
  end

  def new
    @diary = Diary.new
  end

  def show
    @diary = Diary.find(params[:id])
    @body = @diary.sleep.length + @diary.meal.length + @diary.motion.length
    @technique = @diary.study.length + @diary.output.length + @diary.today_goal.length
    @heart = @diary.margin.length + @diary.tired.length + @diary.refresh.length
    @htb = @body + @technique + @heart
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
    redirect_to root_path
    else
      render :new
    end
  end

  def destrory
    @diary = Diary.find(params[:id])
    @diaries.destrory
    redirect_to diaries_path, notice:"削除しました"
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    if @diaries.update(diary_params)
      redirect_to diaries_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:sentence, :sleep, :meal, :motion, :study, :output, :today_goal, :margin, :tired, :refresh, :start_time).merge(user_id: current_user.id)
  end

end
