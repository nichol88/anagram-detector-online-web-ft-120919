# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    a = []
    # check for match in each item
    array.each{ |w|
      if char_count(w) == char_count(@word)
        a.push(w)
      end
    }
    a
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
