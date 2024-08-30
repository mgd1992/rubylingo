class UsersController < ApplicationController
  def select_level
    @full_page = true
  end

  def challenges_per_day
    @full_page = true
  end
end
