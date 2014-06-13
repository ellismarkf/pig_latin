require "pig_latin/version"

module PigLatin
  def self.translate(word)
    if begins_with_vowel?(word)
      word + "way"
    elsif begins_with_y?(word)
      translate_y_word(word)
    else
      translate_others(word)
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

  def self.transpose_cons(word)
    letters = word.split('')
    if /\A[^aeiouy]+/.match(letters.first)
      true
    else
      false
    end
  end

  def self.begins_with_y?(word)
    letters = word.split('')
    if /[y]/.match(letters.first)
      true
    else
      false
    end
  end

  def self.translate_y_word(word)
    y_word = /(y)(.+)/.match(word)
    y_word[2] + y_word[1] + "ay"
  end

  def self.translate_others(word)
    new_word = /(\A[^aeiouy]+)(.+)/.match(word)
    new_word[2] + new_word[1] + "ay"
  end

end
