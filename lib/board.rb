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

  def split_coordinates at_coordinates
   element_split =  at_coordinates.split('')
   letter = element_split[0].upcase
  end

  def alphabet_hash letter
    alpha_hash = {'A' => 0, 'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4, 'F' => 5, 'G' => 6, 'H' => 7, 'I' => 8, 'J' => 9, 'K' => 10}
    key_return = alpha_hash[letter] 
  end

  def alphabet_to_integer letter_string
    index = letter_string.map {|key| value }
  end


  def opponent_view
  end


  

# a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
end
