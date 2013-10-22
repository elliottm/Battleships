require 'board'

describe Board do

let(:player) { double :player }
let(:board) { Board.new(player)}

  it 'has a player when created' do
    expect(board).to have_name
  end

  it 'has no ships' do
  	expect(board.ship_count).to eq 0
  end

  it 'can accept player ships' do
  	player = double :player, {:place_ships => :ship}
  	board.accept_player_ships(player)
  	expect(board.ship_count).to eq 1
  end

  it 'creates an empty board' do
    expect(board.rows).to be_a Array
  end

  it 'has ships on the board' do
    battleships = double :battleships
    board.put_ships_to_board battleships
    expect(board).to have_ships
  end
  it 'splits user coordinates into a letter' do
    expect(board.split_coordinates_to_letter('A5')).to eq 'A'
  end

  it 'splits user coordinates into a number' do
    expect(board.split_coordinates_to_number('B5')).to eq 5
  end

  it 'returns index based on a letter' do
    expect(board.converts_letter_to_index('B')).to eq 1
  end

  it 'returns first index for empty_board' do
    expect(board.first_board_index('A5')).to eq 0
  end

  it 'returns second index for empty_board' do
    expect(board.second_board_index('A5')).to eq 5
  end
 
  it 'can replace an element on the board with empty space' do
    expect(board.replace_board_element('A5')).to eq 'o'
  end  

end
