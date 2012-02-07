class StatisticsController < ApplicationController
  def index
  end

  def user

  	@player = User.find(params[:id])

  	@player_statistics = User.statistics(@player.id)

  end

end
