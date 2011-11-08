require File.join( File.dirname( __FILE__), "game")

@game = Game.new

ARGV.each do |_cycles|
  puts "Wins for Player A in #{_cycles} rounds => " + @game.wins_for_first_player( _cycles.to_i).to_s
end
