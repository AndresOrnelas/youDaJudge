class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@score = Score.find_by fight_id: 1, user_id: current_user.id
    # @users = User.all
    @user = current_user
    @emails = @user.friends.select { |friend| friend.scores.any? { |score| score.fight_id == 1 } }.collect { |friend| friend.email }
    # @friendscore = @friends.collect { |friend| friend.scores.select { |score| score.fight_id == 1 } }
    @output = @emails.collect do |email|
    	user_id = User.find_by(email: email).id
    	subarr = []
    	subarr.push email
    	subarr.push []
    	user = Score.find_by(user_id: user_id)
    	subarr[1].push user.r1_f1
    	subarr[1].push user.r1_f2
    	subarr[1].push user.r2_f1
    	subarr[1].push user.r2_f2
    	subarr[1].push user.r3_f1
    	subarr[1].push user.r3_f2
    	subarr
    end

  end

  def show
    @user = current_user
  	
  end
end
