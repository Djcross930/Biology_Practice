sequence_array = []



File.open("sequence.txt", "r") do |file|
  x = 0
  while x < 60
    sequence_array << file.readchar()
    x += 1
  end
end
p sequence_array

index = 0

while index < sequence_array.length
  if sequence_array[index] == "a"
    if sequence_array[index + 1] == "u"
      if sequence_array[index + 2] == "g"
        p "start codon at position #{index}"
        index += 1
      end
    else
      index += 1
    end
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if sequence_array[index] == "u"
    if sequence_array[index + 1] == "a"
      if sequence_array[index + 2] == "a"
        p "stop codon at position #{index}"
        index += 1
      end
    else
      index += 1
    end
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if sequence_array[index] == "u"
    if sequence_array[index + 1] == "a"
      if sequence_array[index + 2] == "g"
        p "stop codon at position #{index}"
        index += 1
      end
    else
      index += 1
    end
  else
    index += 1
  end
end

index = 0

while index < sequence_array.length
  if sequence_array[index] == "a"
    if sequence_array[index + 1] == "g"
      if sequence_array[index + 2] == "a"
        p "stop codon at position #{index}"
        index += 1
      end
    else
      index += 1
    end
  else
    index += 1
  end
end