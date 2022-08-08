sequence_array = []



File.open("sequence.txt", "r") do |file|
  x = 0
  while x < 12
    sequence_array << file.readchar()
    x += 1
  end
end
p sequence_array

amino_acid_index = 3
index = 0
third_index = 0
x = 3
while index < sequence_array.length
  if sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "G"
    p "Start Codon at position #{index}"
    while
      amino_acids = []
      amino_acids << sequence_array[amino_acid_index]
      amino_acids << sequence_array[amino_acid_index + 1]
      amino_acids << sequence_array[amino_acid_index + 2]
      if (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "A")
        p "Isoleucine codon at position #{amino_acid_index}"
        amino_acid_index += 3
      
      
      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "C")
        p "PHE at position #{amino_acid_index}"
        amino_acid_index += 3
      
      
      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "G")
        p "Leu at position #{amino_acid_index}"
        amino_acid_index += 3
      
      
      
      
      
      
      
      
      end
    end
  else
    index += 1
  end
end







# index = 0
# while index < sequence_array.length
#   if sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "G"
#     p "Start codon at position #{index}"
#     index += 1
#   else
#     index += 1
#   end
# end

# index = 0

# while index < sequence_array.length
#   if (sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "C") || (sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "U") || (sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "A")
#     p "Isoleucine codon at position #{index}"
#     index += 1
#   else
#     index += 1
#   end
# end

# index = 0

# while index < sequence_array.length
#   if sequence_array[index] == "U" && sequence_array[index + 1] == "A" && sequence_array[index + 2] == "A"
#     p "Stop codon at position #{index}"
#     index += 1
#   else
#     index += 1
#   end
# end

# index = 0

# while index < sequence_array.length
#   if sequence_array[index] == "U" && sequence_array[index + 1] == "A" && sequence_array[index + 2] == "G"
#     p "Stop codon at position #{index}"
#     index += 1
#   else
#     index += 1
#   end
# end

# index = 0

# while index < sequence_array.length
#   if sequence_array[index] == "A" && sequence_array[index + 1] == "G" && sequence_array[index + 2] == "A"
#     p "Stop codon at position #{index}"
#     index += 1
#   else
#     index += 1
#   end
# end
