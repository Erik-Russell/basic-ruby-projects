def caesar_cipher(string, shift_factor)
  # takes a string and shift_factor and outputs
  # modified string:
  # > caesar_cipher("What a string!", 5)
  # => "Bmfy f xywnsl!"
  
  ########################
  #     ASCII CHART
  #   65 -  90  =>  A - Z
  #   97 - 122  =>  a - z
  ########################

  uppercase_range = (65..90)
  lowercase_range = (97..122)

  array_ords_original = string.chars.map { |char| char.ord }

  array_ords_shift = array_ords_original.map do |number|
    if uppercase_range.include?(number)
      number += shift_factor
      if number > 90
        number -= 26
      else
        number
      end
    elsif lowercase_range.include?(number)
      number += shift_factor
      if number > 122
        number -= 26
      else
        number
      end
    else
      number
    end
  end
  encrypted_string = array_ords_shift.map{ |num| num.chr }.join

  return encrypted_string

end

caesar_cipher("What a string!", 5)