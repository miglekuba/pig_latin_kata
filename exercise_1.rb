# Write a program that takes a word and returns the pig latin version.
# Here are the (simplified) rules of pig latin:
#
# If the word starts with consonant, move it to the end and then add 'ay'
# Or, if the word starts with a vowel, add 'way' to the end
# e.g. dog  -> ogday
#      up   -> upway
#
# Don't worry about handling multiple consonants
# Assume the words are lowercase.
# Assume your user is a developer — e.g. you don't need to write a user interface.


def pig_latin(word)
  consonant_letters = ["b", "c", "d", "f", "g", "h", "j", "k",
     "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z", "w", "y"]


if consonant_letters.include?(word[0])
  first = word[0]
  word[0]= ""
  word+first+"ay"
else
  word+"way"
end
end

## Tests:
pig_latin("dog")
require_relative './helpers/assert_equal'
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
