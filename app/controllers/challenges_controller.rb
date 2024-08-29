class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where(level: current_user.knowledge_level).order(order: :asc)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @user_challenge = UserChallenge.find_by(challenge: @challenge, user: current_user)
    # If I have no question params, then get the first question
    @question = Question.where(challenge: @challenge).find { |question| UserAnswer.find_by(question: question, user_challenge: @user_challenge).nil?  }

    if @question
      @answers = @question.answers
      @user_answer = UserAnswer.new
    else
      @correct_answers_count = 0
      @user_challenge.user_answers.each do |user_answer|
        @correct_answers_count += 1 if user_answer.answer.is_correct
      end
    end


    
  end
end
