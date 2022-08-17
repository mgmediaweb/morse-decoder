def decode_char(char)
  codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
  }

  codes[char]
end

def decode_word(code)
  result = ''
  words = code.split(/   /)

  words.each do |word|
    chars = word.split(/ /)

    chars.each do |char|
      result += decode_char(char)
    end

    result += ' '
  end

  puts result.chop
end

decode_word('-- -.--   -. .- -- .')

decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')