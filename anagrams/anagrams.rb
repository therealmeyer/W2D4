

def first_anagram?(str1, str2)
  anagrams = str1.chars.permutation.map(&:join)
  anagrams.include?(str2)
end

def second_anagram?(str1, str2)
  string1 = str1.dup
  string2 = str2.dup

  str1.each_char.with_index do |char1, _|
    letter = string2.index(char1)
    string2[letter] = "" if letter
  end

  str2.each_char.with_index do |char2, _|
    letter = string1.index(char2)
    string1[letter] = "" if letter
  end

  string1.empty? && string2.empty?
end

def third_anagram?(str1, str2)
  str1.sort == str2.sort
end
