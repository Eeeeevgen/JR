# coding:  utf-8

def passgen (len)
  consonant = %w{b c d f g h j k l m n p q r s t v w x z}
  vowel = %w{a e i o u y}

  out = String.new()

  len.times do
    |x|
    if x % 2 == 0
      num = (Random.rand()*consonant.length).to_i
      letter = consonant[num]
    else
      num = (Random.rand()*vowel.length).to_i
      letter = vowel[num]
    end

    if Random.rand().round == 1
      letter.upcase!
    end
    out += letter
  end
  return out
end

puts passgen(8)