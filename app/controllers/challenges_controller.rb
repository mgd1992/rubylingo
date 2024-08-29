class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where(level: current_user.knowledge_level).order(order: :asc)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @user_challenge = UserChallenge.find_by(challenge: @challenge, user: current_user)
    # If I have no question params, then get the first question
    if params[:question].present?
      @question = Question.where(challenge: @challenge)[params[:question].to_i - 1]
    else
      @question = Question.where(challenge: @challenge).first
    end
    # If I have a question param, get the question with that question
    @answers = @question.answers
    @user_answer = UserAnswer.new
    @next_question_to_display = params[:question].present? ? params[:question].to_i + 1 : 2
    
  end
end
