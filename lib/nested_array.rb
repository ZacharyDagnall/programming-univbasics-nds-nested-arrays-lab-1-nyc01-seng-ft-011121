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

def sort(arr)
  arr2 = []
  
  for i in 0...(arr.length-1) do
    arr2[i] = arr[i]
    
    for j in 1...arr.length do
      if(arr[j] < arr2[i]) then
        arr2[i] = arr[j]
      end
    end 
  end
  
  arr=arr2
  
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
