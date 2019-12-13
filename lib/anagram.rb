# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)

    # check for match in each item
    array.collect{ |w|
      char_count(w) == char_count(@word)
    }

  end

  private

  def char_count(word) # returns sorted hash of character count
    h = {}
    word.each_char { |chr|
      h[chr] = word.count(chr)
    }
    h.sort
  end

end
