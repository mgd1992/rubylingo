class Question < ApplicationRecord
  belongs_to :challenge
  has_many :answers
  has_many :messages
end
