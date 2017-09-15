def caesar_cipher(word, shift)
	word.each_char.map do |letter|
		if ('a'..'z').include? letter
			((letter.ord - 97 + shift) % 26 + 97).chr
		elsif ('A'..'Z').include? letter
			((letter.ord - 65 + shift) % 26 + 65).chr
		else
			letter
		end
	end.join
end

puts caesar_cipher("zz", 1)
puts caesar_cipher("ABCZZ", 3)
puts caesar_cipher("What a string!", 5)