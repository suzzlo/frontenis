class ActivityController < ApplicationController

  def last
  	@games = Game.all(:order => 'played DESC', :conditions => ['played >= ?', 2.month.ago.to_date])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

  def all
  	@games = Game.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

end
