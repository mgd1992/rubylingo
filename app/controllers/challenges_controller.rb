class ChallengesController < ApplicationController
  def index
    current_user.update(knowledge_level: params[:update_level]) if params[:update_level].present?
    @challenges = Challenge.where(level: current_user.knowledge_level).order(order: :asc)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @user_challenge = UserChallenge.find_by(challenge: @challenge, user: current_user)


    if params[:restart].present?
      UserAnswer.where(user_challenge: @user_challenge).destroy_all
    end

    @question = Question.where(challenge: @challenge).find { |question| UserAnswer.find_by(question: question, user_challenge: @user_challenge).nil? }

    if @question
      @answers = @question.answers
      @user_answer = UserAnswer.new
    else
      @correct_answers_count = 0
      @user_challenge.user_answers.each do |user_answer|
        @correct_answers_count += 1 if user_answer.answer.is_correct
      end

      if @correct_answers_count.to_f / @challenge.questions.count >= 0.70
        @next_challenge = Challenge.find_by(order: @challenge.order + 1, level: @challenge.level)
        UserChallenge.create(challenge: @next_challenge, user: current_user)
      end
    end
  end
end
