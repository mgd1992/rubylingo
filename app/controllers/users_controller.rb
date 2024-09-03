class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @challenges = Challenge.where(level: current_user.knowledge_level)
  end
  
  def select_level
    @full_page = true
  end

  def challenges_per_day
    @full_page = true
  end

  def update_gems
    @user = User.find(params[:id])
    @user.update(ruby_gems: @user.ruby_gems + params[:ruby_gems].to_i)

    # @user.ruby_gems += params[:user][:ruby_gems].to_i
    # @user.save

    redirect_to profile_path(@user)
  end
end
