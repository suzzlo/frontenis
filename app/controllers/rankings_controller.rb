class RankingsController < ApplicationController

  def index

  	@rankings = Hash.new

  	User.all.each do | user |

  		@played_games = Game.where("t1_p1 = :id OR t1_p2 = :id OR t2_p1 = :id OR t2_p2 = :id", {:id => user.id}).all
  		@win_games = Game.where("((t1_p1 = :id OR t1_p2 = :id) AND t1_points > t2_points) OR ((t2_p1 = :id OR t2_p2 = :id) AND t1_points < t2_points)", {:id => user.id}).all

  		played_games = @played_games.size
  		winned_games = @win_games.size
  		loosed_games = played_games - winned_games
  		differential = winned_games - loosed_games
  		efectivity = played_games == 0 ? 0 : (winned_games * 100 / played_games)

  		score = efectivity * differential

		@rankings.store(user.id, User.statistics(user.id) )

  	end
    # try to sort by score
    # TODO esto parece que no esta funcionando :-(
    #@rankings.sort_by {|k,v| v[:score].to_i}.reverse
    
  end

end
