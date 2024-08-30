class UsersController < ApplicationController
  def show
    @challenges = Challenge.where(level: current_user.knowledge_level)
  end
  
  def select_level
    @full_page = true
  end

  def challenges_per_day
    @full_page = true
  end
end
