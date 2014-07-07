class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@score = Score.new

  end
  def show
  end
end
