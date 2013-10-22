require_relative 'board'

class Player
  # Initializes a new player with her/his name.
  #
  # You will have to create a board in there and randomize the
  # positioning of your ships on the board.

  attr_reader :name, :board
  

  def initialize name
    @name = name
    @board = Board.new :name
    @number_of_ships = 30
  end

  def select_ships
    @battleships = []
    (1..@number_of_ships).each { @battleships << [rand(9), rand(9)] }
    @battleships
  end

  # Tells us if there are still ships that have not been hit
  # on her/his board.
  def has_ships_still_floating?
    battleships_count != 0
  end
  
  # Shoots at the opponents board.
  def shoot(at_coordinates, opponent_board)
    board.register_shot at_coordinates
  end
  
  def ship_attacked at_coordinates
    #@battleships - at_coordinates
    @battleships.pop() #Ruz- need to delete the correct element
  end

  def battleships_count
    @battleships.count
  end

end
