class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@score = Score.find_by fight_id: 1, user_id: current_user.id
    @users = User.all
  end

  def show
    @user = current_user
  	
  end
end
