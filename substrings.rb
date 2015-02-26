dictionary = ["below","down","go","going","horn","how","howdy", "it","i","low","own","part","partner","sit"]
string_1 = "below"
string_2 = "Howdy partner, sit down! How's it going?"

# match words or partial words in input strings and match them against items in dictionary.
# for each encounter of of matched item, add to results hash.

def substring(string, dictionary)
	results = {}
	string.downcase.split(/\W+/).each do |substring|
		dictionary.each do |word|
			expression = Regexp.union(word)
			if expression.match(substring)
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