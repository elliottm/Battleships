require 'board'

describe Board do

  it 'has a player when created' do
    player = double :player
    board = Board.new(player)
    expect(board).to have_name
  end

  it 'has no ships' do
  	player = double :player
  	board = Board.new(player)
  	expect(board.ship_count).to eq 0
  end

  it 'can accept player ships' do
  	player = double :player, {:place_ships => :ship}
  	board = Board.new(player)
  	board.accept_player_ships(player)
  	expect(board.ship_count).to eq 1
  end

  it 'creates an empty board' do
  	player = double :player
  	board = Board.new(player)
    expect(board.rows).to be_a Array
  end

  it 'has ships on the board' do
    battleships = double :battleships
    player = double :player
    board = Board.new(player)
    board.put_ships_to_board battleships
    expect(board).to have_ships
  end
  it 'splits user coordinates into a letter' do
    player = double :player
    board = Board.new(player)
    expect(board.split_coordinates_to_letter('A5')).to eq 'A'
  end

  it 'splits user coordinates into a number' do
    player = double :player
    board = Board.new(player)
    expect(board.split_coordinates_to_number('B5')).to eq 5
  end

  it 'returns index based on a letter' do
    player = double :player
    board = Board.new(player)
    expect(board.converts_letter_to_index('B')).to eq 1
  end

  it 'returns first index for empty_board' do
    player = double :player
    board = Board.new(player)
    expect(board.first_board_index('A5')).to eq [0]
  end

  it 'returns second index for empty_board' do
    player = double :player
    board = Board.new(player)
    expect(board.second_board_index('A5')).to eq [5]
  end
 
  it 'can replace something on the board' do
    player = double :player
    board = Board.new(player)
    board.replace_board_element [1], [0]
    expect(board.rows[1][0]).to eq 's'
  end

  end


# do i connect alpha_hash method to split_coord as an argument?  
# or in UI config this?

  

end
