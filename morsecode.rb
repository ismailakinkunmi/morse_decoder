def decode_char(char)
  morse_hash = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
                 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.',
                 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-',
                 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..' }
  morse_hash.key(char)
end

def decode_word(word)
  new_str = ''
  word_array = word.split
  word_array.each { |n| new_str += decode_char(n) }
  new_str
end

def decode(str)
  d_str = ''
  str_array = str.split('   ')
  str_array.each do |a|
    d_str += if str_array.length - 1 == str_array.find_index(a)
               decode_word(a).to_s
             else
               "#{decode_word(a)} "
             end
  end
  d_str
end
