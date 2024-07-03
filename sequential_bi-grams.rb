# Solve an algorithm challenge with given inputs/outputs and/or automated tests
# Sequential Bi-grams
# Given a string of words, create a set of every sequential bi-gram.  Bigrams are two-word combinations of the text, i.e. “Charlie rocks”.
 
# Example
# "Make a killer impression on whoever you’re meeting."
 
# returns
# “Make a"
# “a killer"
# “killer impression"
# “impression on"
# Etc.

# requirements
# Generates a set of every possible bigram from a string of text
# Keep performance & memory usage in mind
# Include tests
# We prefer Ruby or Python, but you may use any language.

# Decomposition 
# break a string into each word using .split 
# grab every sequential bi-gram (2 words)
# return each sequential bi-gram with concat or << method (an alias for concat)
# some way to make the algo move one word over (index, loop, ?)


string = "Make a killer impression on whoever you’re meeting."
split_string = string.split
bi_grams = []
index = 0
while index < split_string.length - 1
  first_word = split_string[index]
  second_word = split_string[index + 1]
  bi_gram = "#{first_word} #{second_word}"
  bi_grams << bi_gram
  index += 1
end

p bi_grams



string = "Make a killer impression on whoever you’re meeting."
split_string = string.split
bi_grams = []

split_string.each do |word|
  # Get the current index of the word
  index = split_string.index(word)
  # Ensure we don't go out of bounds
  if index < split_string.length - 1
    # Create the bi-gram by concatenating the current word with the next word
    bi_gram = "#{word} #{split_string[index + 1]}"
    # Add the bi-gram to the array
    bi_grams << bi_gram
  end
end

p bi_grams




string = "Make a killer impression on whoever you’re meeting."
split_string = string.split
bi_grams = []
split_string.each_with_index do |word, index|
  if index < split_string.length - 1
    first_word = word
    second_word = split_string[index + 1]
    bi_gram = "#{first_word} #{second_word}"
    bi_grams <<
  end
end

p bi_grams