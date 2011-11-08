#  Tue Nov  8 20:55:37 IST 2011, ramonrails
# =================
# 
# Consider a game played on a strip of n empty squares (a 1 x n grid). Players take turns moving. A move consists of
# choosing two adjacent empty squares and drawing an "X" in each of them. The winner is the first player who cannot
# make a move.
# 
# - If n = 1, there are no moves for the first player, so the first player wins automatically. - If n = 2, there is
# only one move for the first player, after which the second player wins. - If n = 3, there are two moves for the first
# player, both of which leave a situation in which the second player wins. - If n = 4, there are three moves for the
# first player; he can win the game by drawing an X in each of the two adjacent squares nearest to either the left edge
# or the right edge of the strip. For instance, if the initial empty board looks like this "----", a winning move is
# either "XX--" or "--XX". - If n = 5, there are four moves for the first player, any of which will allow him to force
# a win.
# 
# So, for 1 <= n <= 5, there are 3 values of n for which the first player can force a win. Similarly, for 1 <= n <= 10,
# there are 6 values of n for which the first player can force a win.
# 
# For 1 <= n <= 70, how many values of n are there for which the first player can force a win?
# 
# =================
# 
# Write a program to calculate the answer. Your solution should be all your own work. Then send us the answer along
# with your source code, how long it took to run, and what kind of machine you ran it on.

require 'ruby-debug' ; Debugger.start
require File.join( File.dirname( __FILE__), "..", "game")

#   * for every 5 cycles, Player A has 3 wins
#   When all cycles are divided into batches of 5 cycles in each batch
#   * every 1st, 4th & 5th cycle, Player A wins
describe "Ruby game array based" do
  before { @game = Game.new }

  #  Wed Nov  9 01:05:18 IST 2011, ramonrails
  #   * This code is not optimized for performance, benchmarked or profiled
  #   * It is kept elaborated and placed with lot of formatting to keep it readable
  {
    1  => [1, 2, 3],
    2  => [4],
    3  => [5],
    4  => [6, 7, 8],
    5  => [9],
    6  => [10],
    7  => [11, 12, 13],
    8  => [14],
    9  => [15],
    42 => [70]    # this is the required answer :) sounds good?
  }.each do |wins, cycles|
    specify do
      cycles.each do |_cycle|
        @game.wins_for_first_player( _cycle).should == wins
      end
    end
  end
end
