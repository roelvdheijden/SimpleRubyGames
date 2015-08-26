class NumberGuessingGame
  def initialize (low, high)
    @number = rand(low .. high);
    @turn = 0
    play(low, high)
  end

  def play (low, high, turns=1)	
    guess = (low + high) / 2
  	print "guessing #{guess} .."
  	@turn += 1
  	
  	case (guess <=> @number)
	  	when 1
	  		puts ".. too high\n"
	  		play(low, guess - 1, turns + 1)
	  	when -1
	  		puts ".. too low\n"
	  		play(guess + 1, high, turns + 1)
	  	else
	  	  puts "!! found the number in #{@turn} turns.\n"
		end
  end
end

game = NumberGuessingGame.new(1,100)