module Translator

  def split_coordinates_to_letter at_coordinates
   element_split =  at_coordinates.split('')
   letter = element_split[0].upcase
  end

  def split_coordinates_to_number at_coordinates
   element_split =  at_coordinates.split('')
   number = element_split[1].to_i
  end

  def converts_letter_to_index letter
    alpha_hash = {'A' => 0, 'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4, 'F' => 5, 'G' => 6, 'H' => 7, 'I' => 8, 'J' => 9, 'K' => 10}
    column_index = alpha_hash[letter] 
  end

  def first_board_index at_coordinates
    column_index = converts_letter_to_index(split_coordinates_to_letter(at_coordinates))
    column_index
  end

  def second_board_index at_coordinates
    row_index = split_coordinates_to_number(at_coordinates)    
    row_index
  end

end

