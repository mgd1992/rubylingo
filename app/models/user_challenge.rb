class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :user_answers, dependent: :destroy

  def succeeded?
    correct_answers_count = 0
    user_answers.each do |user_answer|
      correct_answers_count += 1 if user_answer.answer.is_correct
    end
    questions_count = challenge.questions.count
 
    correct_answers_count.to_f / questions_count >= 0.70
  end
end
