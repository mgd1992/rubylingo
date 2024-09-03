class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @message = Message.new
  end
end
