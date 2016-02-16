class StatisticsController < ApplicationController
  def index
  end

  def user

  	@player = User.find(params[:id])
    @championships = Championship.order(start_date: :desc)

  	@player_statistics = User.statistics(@player.id, params[:championship_id])

  end

end
