class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.new(user_answer_params)

    if @user_answer.save
      redirect_to challenge_path(@user_answer.challenge)
    end
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_id, :user_challenge_id, :answer_id)
  end
end
