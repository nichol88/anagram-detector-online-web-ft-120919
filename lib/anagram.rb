# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)

    # check for match in each item

    array.each{ |w|

      # conditions:
      # w must contain one and only one of each letter in @word

      # if length is the same and letter count of each is the same

    }

  end

  private

  def char_count(word)
    # returns hash of character count
    h = {}
    word.each_char { |chr|
      h[chr] = word.count(chr)
    }
    h.sort
  end


end
