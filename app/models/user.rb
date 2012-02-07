class User < ActiveRecord::Base

def self.statistics(user_id)

	@played_games = Game.where("t1_p1 = :id OR t1_p2 = :id OR t2_p1 = :id OR t2_p2 = :id", {:id => user_id}).all
  	@win_games = Game.where("((t1_p1 = :id OR t1_p2 = :id) AND t1_points > t2_points) OR ((t2_p1 = :id OR t2_p2 = :id) AND t1_points < t2_points)", {:id => user_id}).all

  	played_games = @played_games.size
  	winned_games = @win_games.size
  	loosed_games = played_games - winned_games
  	differential = winned_games - loosed_games
  	efectivity = played_games == 0 ? 0 : (winned_games * 100 / played_games)

  	score = efectivity * differential

    @statistics = {
      :id => user_id,
      :name => User.find(user_id).name,
			:score => score, 
			:played_games => played_games,
			:winned_games => winned_games, 
			:loosed_games => loosed_games, 
			:differential => differential, 
			:efectivity => efectivity
			}
  end

end
