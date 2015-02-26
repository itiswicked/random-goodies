# A solution to a caeser cypher, string being the input text,
# factor being a positive number that determines the offset of
# each character.
# This routine affects "A".."Z" and "a..z", preserves case, but leaves 
# non-alphabet characters alone.

def caeser_cipher(string, factor)
	string.unpack('C*').map do |number|
		if number.between?(65, 90) # for uppercase letters ASCII 65..90
			if number + factor > 90
				#for number that would loop past the end of the alphabet
				(number + factor - 26).chr
			else
				(number + factor).chr
			end
		elsif number.between?(97, 122) # for lowercase letters ASCII 97..122
			if number + factor > 122
				#for number that would loop past the end of the alphabet
				(number + factor - 26).chr
			else
				(number + factor).chr
			end
		else
			number.chr
		end
	end
end


string = "What a string!"
factor = 5
print caeser_cipher(string, factor).join





