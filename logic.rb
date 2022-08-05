sequence_array = []



File.open("sequence.txt", "r") do |file|
  x = 0
  while x < 12
    # if file.readchar() == "Z"
    #   break
    # else
    sequence_array << file.readchar()
    x += 1
    # end
  end
end
p sequence_array.class
p sequence_array

index = 0
while index < sequence_array.length
  if sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "G"
    p "Start codon at position #{index}"
    index += 1
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if (sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "C") || (sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "U")
    p "Isoleucine codon at position #{index}"
    index += 1
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if sequence_array[index] == "U" && sequence_array[index + 1] == "A" && sequence_array[index + 2] == "A"
    p "Stop codon at position #{index}"
    index += 1
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if sequence_array[index] == "U" && sequence_array[index + 1] == "A" && sequence_array[index + 2] == "G"
    p "Stop codon at position #{index}"
    index += 1
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if sequence_array[index] == "A" && sequence_array[index + 1] == "G" && sequence_array[index + 2] == "A"
    p "Stop codon at position #{index}"
    index += 1
  else
    index += 1
  end
end
