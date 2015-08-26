class NumberReversalGame
  def initialize
    @turn = 0
    @gameboard = (1..9).to_a.shuffle!
    play
  end

  def play	
    print "#{@gameboard.inspect} -- How many numbers to reverse? "
  	num = gets.to_i
  	
		@gameboard[0, num] = @gameboard[0, num].reverse
  	@turn += 1
    
  	unless @gameboard == @gameboard.sort
  		play
  	else

			puts "#{@gameboard.inspect} !! Numbers ordered in: #{@turn} turns"
		end
  end
end

game = NumberReversalGame.new