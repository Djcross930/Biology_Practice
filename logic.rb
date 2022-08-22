while
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
    while switch == 0
      amino_acids = []
      amino_acids << sequence_array[amino_acid_index]
      amino_acids << sequence_array[amino_acid_index + 1]
      amino_acids << sequence_array[amino_acid_index + 2]
      if (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A")
        protein << "Ile"
        amino_acid_codons << amino_acids
        amino_acid_index += 3
      
      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C")
        protein << "Phe"
        amino_acid_codons << amino_acids
        amino_acid_index += 3
      
      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "G")
        protein << "Leu"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "U" && amino_acids[base_pair_index + 2] == "G")
        protein << "Val"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C")
        protein << "Ser"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G")
        protein << "Pro"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G")
        protein << "Thr"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "C" && amino_acids[base_pair_index + 2] == "G")
        protein << "Ala"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        protein << "Tyr"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        protein << "His"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      
      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G")
        protein << "Gln"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        protein << "Asn"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G")
        protein << "Lys"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "C")
        protein << "Asp"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G")
        protein << "Glu"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C")
        protein << "Cys"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G")
        protein << "Trp"
        amino_acid_codons << amino_acids
        amino_acid_index += 3


      elsif (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "C" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "A" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G") 
        protein << "Arg"
        amino_acid_codons << amino_acids
        amino_acid_index += 3



      elsif (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "U") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "C") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "G" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "G")
        protein << "Gly"
        amino_acid_codons << amino_acids
        amino_acid_index += 3

      
      elsif (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "A") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "A" && amino_acids[base_pair_index + 2] == "G") || (amino_acids[base_pair_index] == "U" && amino_acids[base_pair_index + 1] == "G" && amino_acids[base_pair_index + 2] == "A")
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
puts "Original: #{amino_acid_codons.flatten}"

def point_mutation(protein_sequence)
  frame_selector = rand((protein_sequence.length - 1))
  nucleotide_selector = rand(2)
  mutation_replacement = rand(3)
  if mutation_replacement == 0
    protein_sequence[frame_selector][nucleotide_selector] = "A"
  elsif mutation_replacement == 1
    protein_sequence[frame_selector][nucleotide_selector] = "U"
  elsif mutation_replacement == 2
    protein_sequence[frame_selector][nucleotide_selector] = "G"
  elsif mutation_replacement == 3
    protein_sequence[frame_selector][nucleotide_selector] = "C"
  end
  return protein_sequence.flatten
end
new_mutated_mrna = point_mutation(amino_acid_codons)
puts "Mutated: #{point_mutation(amino_acid_codons)}"
puts "Mutated bases: #{mutated_mrna = point_mutation(amino_acid_codons).join}"
end