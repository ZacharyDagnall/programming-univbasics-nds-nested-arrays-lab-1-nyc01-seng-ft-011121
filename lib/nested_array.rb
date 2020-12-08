# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

def assembled_matrix
  storage_room = [CONVENTIONAL_PRODUCE, ORGANIC_PRODUCE]
end

def sort(array)
  for i in 0...ORGANIC_PRODUCE.length-1 do
    for j in 1...ORGANIC_PRODUCE.length do
      if(ORGANIC_PRODUCE[i] > ORGANIC_PRODUCE[j]) then
        dummy = ORGANIC_PRODUCE[i]
        ORGANIC_PRODUCE[i] = ORGANIC_PRODUCE[j]
        ORGANIC_PRODUCE[j] = dummy
      end
    end 
  end
end 

def sorted_matrix
  
  sort(ORGANIC_PRODUCE)
  sort(CONVENTIONAL_PRODUCE)
  
  storage_room = [CONVENTIONAL_PRODUCE, ORGANIC_PRODUCE]
  puts storage_room
end

def matrix_lookup(matrix, row, column)
  matrix[row][column]
end

def matrix_update(matrix, row, column, new_value)
  matrix[row][column] = new_value
  matrix
end
