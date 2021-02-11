class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def show
    @diary = Diary.find(params[:id])
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
    params.require(:diary).permit(:sentence, :sleep, :meal, :motion, :study, :output, :today_goal, :margin, :tired, :refresh, :diary_time)
  end

end
