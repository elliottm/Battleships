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

  it 'splits user coordinates for translation' do
    player = double :player
    board = Board.new(player)
    board.split_coordinates('A5')
    expect(user_input).to eq ['A', '5']
  end

end
