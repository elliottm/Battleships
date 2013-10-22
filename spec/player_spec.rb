require 'player'

describe Player do

        let(:player) {Player.new :name}
        let(:board) {double :Board}
        number_of_ships = 30
  
        it 'tells us the name' do
          expect(player.name).to equal(:name)
        end

        it 'tells us it has a board' do
          board = double :Board
          expect(player.board).to be_a Board
        end

        it 'randomizes ship elements for the board' do
          player.select_ships
          expect(player.battleships_count).to eq(number_of_ships)
        end

        it 'removes a ship when its attacked by the opponent' do
          player.select_ships
          player.ship_attacked :at_coordinates
          expect(player.battleships_count).to eq(number_of_ships-1)
        end

        it 'confirms when all the ships have been destroyed' do
          player.select_ships
          (1..number_of_ships).each {player.ship_attacked :at_coordinates}
          expect(player.has_ships_still_floating?).to eq(false)
        end

        it 'shoots at the board with the coordinates' do
          expect(player.board).to receive(:register_shot).with(:at_coordinates)
          player.shoot(:at_coordinates, :opponent_board)
        end
        
end