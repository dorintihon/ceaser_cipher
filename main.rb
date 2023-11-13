def caesar_cipher(string, integer)

  shifted_string = string.bytes.map do |char|
    # Check if the character is uppercase (65-90 in ASCII)
    if char.between?('A'.ord, 'Z'.ord)
      if(char + integer > 'Z'.ord)
        ('A'.ord + ((char + integer) - 'Z'.ord - 1)).chr
      else
        (char + integer).chr
      end

    # Check if the character is lowercase (97-122 in ASCII)
    elsif char.between?('a'.ord, 'z'.ord)
      if(char + integer > 'z'.ord)
        ('a'.ord + ((char + integer) - 'z'.ord - 1)).chr
      else
        (char + integer).chr
      end
    else
      char.chr
    end
  end

  puts shifted_string.join

end

caesar_cipher("What a string!", 5)
