class Game
  #  Wed Nov  9 01:03:53 IST 2011, ramonrails :)
  #   * This code can be optimized but kept here elaborated for "readability"
  #   * This code is not performance optimized, benchmarked or profiled
  def wins_for_first_player( _cycle_count = 1)
    # debugger
    _assured_wins = ( (_cycle_count / 5) * 3)
    _extra_wins   = case ( _cycle_count % 5)
    when (1..3); 1
    when      4; 2
    else       ; 0
    end
    
    return _assured_wins + _extra_wins
  end
end
