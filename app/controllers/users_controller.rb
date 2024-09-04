class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    user_levels = @user.challenges.pluck(:level).uniq # These are all the levels of the challenges that the user attempted
    @challenges = Challenge.where(level: user_levels) # There are all the challenges available within the levels of the challenges that the user attempted
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
