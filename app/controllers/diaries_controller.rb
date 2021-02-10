class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
  end

  def new
    @diaries = Diary.new
  end

  def show
    @diaries = Diary.find(params[:id])
  end

  def create
    @diaries = Diary.new(diary_parameter)
    if @diaries.save
    redirect_to root_path
    else
      render :new
    end
  end

  def destrory
    @diaries = Diary.find(params[:id])
    @diaries.destrory
    redirect_to diaries_path, notice:"削除しました"
  end

  def edit
    @diaries = Diary.find(params[:id])
  end

  def update
    @diaries = Diary.find(params[:id])
    if @diaries.update(diary_parameter)
      redirect_to diaries_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def diary_parameter
    params.require(:diary).permit(:sentence, :sleep, :meal, :motion, :study, :margin, :tired, :refresh, :output, :today_goal, :diary_time)
  end

end
