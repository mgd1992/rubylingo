class UsersController < ApplicationController
  def show
    @challenges = Challenge.where(level: current_user.knowledge_level)
  end
end
