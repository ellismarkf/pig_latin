require "pig_latin/version"

module PigLatin
  def self.translate(word)
    if begins_with_vowel?(word)
      word + "way"
    else
      false
    end
  end

  def self.begins_with_vowel?(word)
    letters = word.split('')
    if /[aeiou]/.match(letters.first)
      true
    else
      false
    end
  end

end
