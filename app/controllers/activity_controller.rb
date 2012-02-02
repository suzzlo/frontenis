class ActivityController < ApplicationController

  def last
  	@games = Game.find :all
  		#:conditions =>['played' == '2012/01/31']
  		#:order => 'played DESC' 

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
