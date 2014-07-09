class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@score = Score.find_by fight_id: 1, user_id: current_user.id
    # @users = User.all
    @user = current_user
    @friendids = @user.friendships.select(:friend_id)
    @friendscore = Score.where(user_id: @friendids, fight_id: 1)
    @output = @friendscore.pluck(:r1_f1, :r1_f2, :r2_f1, :r2_f2, :r3_f1, :r3_f2)
    @emailarr = @user.friends.pluck(:email)

  end

  def show
    @user = current_user
  	
  end
end
