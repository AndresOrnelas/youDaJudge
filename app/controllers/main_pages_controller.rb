class MainPagesController < ApplicationController
  def login
  end

  def home
  end

  def score
  	if user_signed_in?
  		@fight = current_user.fights.new
  		@fight.save
  	end
  end

  def results
  end

  # def new
  # 	if user_signed_in?
  # 		@fight = current_user.fights.new
  # 	end
  # end

  def create
  	@fight = current_user.fights.new(fights_params)
  	@fight.save
  end

  def fights_params
  	params.require(:fight).permit(:fighterone, :fightertwo)
  end
end
