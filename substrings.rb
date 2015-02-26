dictionary = ["below","down","go","going","horn","how","howdy", "it","i","low","own","part","partner","sit"]
string_1 = "below"
string_2 = "Howdy partner, sit down! How's it going?"

# match words or partial words in input strings and match them against items in dictionary.
# for each encounter of of matched item, add to results hash.

def substring(string, dictionary)
	results = {}
	#split string on non-word characters and iterate
	string.downcase.split(/\W+/).each do |substring|
		#iterate dictionary items over each input substring
		dictionary.each do |word|
			#convert each dictionary word to regexp
			expression = Regexp.union(word)
			if expression.match(substring)
				#add key to results or modify existing keys
				if results.has_key?(word)
					results[word] += 1
				else
					results[word] = 1
				end
			end
		end
	end
	puts results
end

substring(string_2,dictionary)
	# => {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
