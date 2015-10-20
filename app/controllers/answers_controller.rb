class AnswersController < ApplicationController

  before_action :authorize, only: [:edit, :update, :new, :create]

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    if params[:vote] == "up"
      @answer.up_vote += 1
      @answer.save
      redirect_to question_path(@question)
    elsif params[:vote] == "down"
      @answer.down_vote += 1
      @answer.save
      redirect_to question_path(@question)
    else
      if @answer.update(answer_params)
        redirect_to question_path(@question)
      else
       render :edit
      end
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question)
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_content, :up_vote, :down_vote)
  end
end
