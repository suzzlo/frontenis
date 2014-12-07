class ActivityController < ApplicationController

  def last
  	@games = Game.where("played >= ?", 2.month.ago.to_date)
    @championships = Championship.order(start_date: :desc)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

  def all
    if params[:championship_id]
  	  @games = Game.where("championship_id = ?", params[:championship_id])
    else
      @games = Game.all
    end

    @championships = Championship.order(start_date: :desc)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

end
