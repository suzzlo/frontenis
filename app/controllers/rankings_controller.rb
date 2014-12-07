class RankingsController < ApplicationController

  def index

  	@rankings = Hash.new
    @championships = Championship.order(start_date: :desc)

  	User.all.each do | user |
      @rankings.store(user.id, User.statistics(user.id, params[:championship_id]))
  	end

    # try to sort by score
    # TODO esto parece que no esta funcionando :-(
    #@rankings.sort_by {|k,v| v[:score].to_i}.reverse

  end

end
