class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_challenges
  has_many :challenges, through: :user_challenges
  has_many :user_answers, through: :user_challenges
  has_one_attached :photo

  after_create :set_user_challenge
  after_save :set_user_challenge, if: -> { saved_change_to_knowledge_level? }

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  private

  def set_user_challenge
    return if knowledge_level.nil?
    # Check the knowledge level of the user
    # Create the appropriate UserChallenge
    challenge = Challenge.find_by(level: knowledge_level, order: 1)
    UserChallenge.create(user: self, challenge: challenge)
  end
end
