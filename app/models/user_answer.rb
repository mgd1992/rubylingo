class UserAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :answer
  belongs_to :user_challenge

  has_one :challenge, through: :user_challenge
end
