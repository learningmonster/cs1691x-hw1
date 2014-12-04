class RockPaperScissors

   #Exceptions this class can raise:
	class NoSuchStrategyError < StandardError ; end
	
	def self.winner(player1, player2)
    # YOUR CODE HERE
		return RockPaperScissors.does_move1_win?(player1[1], player2[1]) ? player1 : player2
	end

	def self.values
		{	"R" => 0,
			"P" => 1,
			"S" => 2 }
	end
  		
	def self.does_move1_win?(move1, move2)
  		#helper method to determine which move wins
		if !RockPaperScissors.values.has_key?(move1) or !RockPaperScissors.values.has_key?(move2)
			raise RockPaperScissors::NoSuchStrategyError, "Strategy must be one of R,P,S"
		end
		return (RockPaperScissors.values[move2] - RockPaperScissors.values[move1]) % 3 == 1 ? false : true
	end

  def self.tournament_winner(tournament)
   	# YOUR CODE HERE
    
   	# determine if it's the base case or null
   	# if so, return appropriate message
    
		# else
		# recursively find the winner of each array element
		
		
		
  end

end



###  TESTS ###
@rock = ['Armando','R'] ; @paper = ['Dave','P'] ; @scissors = ['Sam','S']; @ty = ["Tayyab", 'H']
puts RockPaperScissors.winner(@rock, @scissors)
puts RockPaperScissors.winner(@rock, @paper)
puts RockPaperScissors.winner(@paper, @scissors)
puts RockPaperScissors.winner(@paper, @ty)




