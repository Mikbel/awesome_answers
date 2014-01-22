class QuestionsController < ApplicationController
  def index
  end
  def new
    @question = Question.new
  end
  def create
    @question = Question.new(params.require(:question).  
   permit([:title, :body]))
      @question.save
redirect_to @question
  end
  def show
    @question = Question.find(params[:id])
  end
end
