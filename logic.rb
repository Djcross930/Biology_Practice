switch = 0

p "Enter a mature mRNA sequence. Must have start and stop codon, and total bases in between must be divisible by 3. Any amount of base pairs may be present before or after the start/stop codons(to represent the mRNA cap and tail), this will not effect the output."

response = gets.chomp.upcase
sequence_array = response.split("")

amino_acid_index = 3
index = 0
base_pair_index = 0
protein = []
amino_acid_codons = []
stop_codon = []
while index < sequence_array.length && switch == 0
  if sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "G"
    p "Start Codon at position #{index}"
    while switch == 0
      amino_acids = []
      amino_acids << sequence_array[amino_acid_index]
      amino_acids << sequence_array[amino_acid_index + 1]
      amino_acids << sequence_array[amino_acid_index + 2]
      if (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A")
        p "Ile at position #{amino_acid_index}"
        protein << "Ile"
        amino_acid_codons << amino_acids
        amino_acid_index += 3
      
      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C")
        p "Phe at position #{amino_acid_index}"
        protein << "Phe"
        amino_acid_codons << amino_acids
        amino_acid_index += 3
      
      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "G")
        p "Leu at position #{amino_acid_index}"
        protein << "Leu"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "G")
        p "Val at position #{amino_acid_index}"
        protein << "Val"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C")
        p "Ser at position #{amino_acid_index}"
        protein << "Ser"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G")
        p "Pro at position #{amino_acid_index}"
        protein << "Pro"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G")
        p "Thr at position #{amino_acid_index}"
        protein << "Thr"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G")
        p "Ala at position #{amino_acid_index}"
        protein << "Ala"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        p "Tyr at position #{amino_acid_index}"
        protein << "Tyr"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        p "His at position #{amino_acid_index}"
        protein << "His"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      
      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G")
        p "Gln at position #{amino_acid_index}"
        protein << "Gln"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        p "Asn at position #{amino_acid_index}"
        protein << "Asn"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G")
        p "Lys at position #{amino_acid_index}"
        protein << "Lys"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        p "Asp at position #{amino_acid_index}"
        protein << "Asp"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G")
        p "Glu at position #{amino_acid_index}"
        protein << "Glu"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C")
        p "Cys at position #{amino_acid_index}"
        protein << "Cys"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G")
        p "Trp at position #{amino_acid_index}"
        protein << "Trp"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G") 
        p "Arg at position #{amino_acid_index}"
        protein << "Arg"
        amino_acid_codons << amino_acids
        amino_acid_index += 3



      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G")
        p "Gly at position #{amino_acid_index}"
        protein << "Gly"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A")
        p "Stop codon at position #{amino_acid_index}"
        stop_codon << amino_acids
        switch = 1
      end
    end
  else
    index += 1
    amino_acid_index += 1
  end
end

p protein
amino_acid_codons.unshift(["A", "U", "G"])
amino_acid_codons.push(stop_codon.flatten)
p amino_acid_codons

def point_mutation(protein_sequence)
  mutation1 = rand((protein_sequence.length - 1))
  mutation2 = rand(2)
  randomizer = rand(3)
  if randomizer == 0
    protein_sequence[mutation1][mutation2] = "A"
  elsif randomizer == 1
    protein_sequence[mutation1][mutation2] = "U"
  elsif randomizer == 2
    protein_sequence[mutation1][mutation2] = "G"
  elsif randomizer == 3
    protein_sequence[mutation1][mutation2] = "C"
  end
  return protein_sequence
end
p point_mutation(amino_acid_codons).flatten
mutated_mrna = point_mutation(amino_acid_codons).flatten