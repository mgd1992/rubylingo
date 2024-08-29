class Question < ApplicationRecord
  belongs_to :challenge
  has_many :answers
end
