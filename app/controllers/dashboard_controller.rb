class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@score = Score.new
    @users = User.all
  end
  def show
    @user = current_user
  	
  end
end
