class Board
  def initialize player
    @player = player
    @battleships = []
    @battleground = []
  end
  
  def owner
    @player.name
  end

  def has_name?
    @player
  end

  def ship_count
    @battleships.count
  end

  def accept_player_ships ships
    @battleships << ships
  end

  def register_shot at_coordinates  
  end

  def rows
    @battleground = Array.new(10) { Array.new(10)}
  end
  
  def has_ships?
    @battleships
  end

  def put_ships_to_board battleships
    @battleships << battleships
  end

  def alphabet_array
     ('A'..'J').to_a
  end

  def split_coordinates at_coordinates
   element_split = at_coordinates.split('')
   element_split[0].convert_to_alphabet
  end

  def opponent_view
  end

  

# a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
end
