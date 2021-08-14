=begin
Have the method letter_changes(str) take the str parameter being passed and modify it usin gthe following algorithm. Replace every letter in the string with the 3rd letter following it in the alphabet (i.e. 'c' becomed 'f', 'Z' becomes 'C'). Then retturn this modified string.

Jessica used modulus for the remainder which returned the correct number. Use it when you need to rotate back around to the other side of an array. I was thinking to use negative indexing.

Specific implementation notes in pseudocode are fine

# Problem
Replace each letter with the third letter following it in the alphabet.

Implicit requirements:
Letters should loop (how to do this?)
Spaces and non letter characters should be included and ignored (skipped, essentially)
Case should be maintained. This seems to imply 2 arrays needed for upper and lower case letters.

Output doesn't matter, can modify string or output new. (Although modify to me implies the string should be mutated.)

## Sub-problem: What if the letter is at the end of the alphabet?
  Our alphabet array could be offset by 1?
  How many arrays do we need? Would a hash be simpler? What about an array of arrays?

  For each letter in letter_array
    new_pair = [letter_arr[-3], letter]
    pairs << new_pair
    # Or would a Hash be better?

  letter_hash = {}
  For each letter in letter_array
    letter_hash[letter_arr[letter_arr.index(letter)-3]] = letter
    letter_hash[letter_arr]

  This doesn't work because we need three index numbers subtracted from letter.index. So maybe each_index?
=end

def letter_changes(str)

end
