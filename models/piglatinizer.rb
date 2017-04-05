class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(word[0].downcase)
      word + "way"
    else
      consonants = []
      while !vowels.include?(word[0].downcase)
        consonants << word[0]
        word = word[1..-1]
      end
      word + consonants.join + 'ay'
    end
  end

  def to_pig_latin(phrase)
    phrase.gsub('.','').split(' ').collect do |word|
      piglatinize(word)
    end.compact.join(' ')
  end

end
