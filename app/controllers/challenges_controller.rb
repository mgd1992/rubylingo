class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where(level: current_user.knowledge_level).order(order: :asc)
  end

  def show
    
  end
end
