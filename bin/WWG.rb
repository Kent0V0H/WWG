#K

load "Game.rb"

cond = '1'
until (cond = gets.chomp) == '0'
	puts "*******************"
	puts "WWG****************"
	puts "*******************"

	newGame = Game.new
	newGame.do_game
	
	puts "\nPress 0 to end game."
end