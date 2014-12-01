module FunWithStrings

	def palindrome?
		# your code here
		source = "#{self}".downcase
		str = source.scan(/([\w]+)/)
		stripped = str.join('')
		#p stripped + ": " + stripped.reverse
		if stripped == stripped.reverse
	    	return true
		else
			return false
		end
	end	
	
	def palindrome2?
		# your code here
		source = "#{self}".downcase
		str = source.scan(/([^[\w]+])/)
		str.each { |x| source.gsub!(x[0], "") }
		#p source + ": " + source.reverse
		if source == source.reverse
	    	return true
		else
			return false
		end
	end


	def count_words
	# your code here
		source = "#{self}".downcase
		words = source.scan(/([\w]+)/)
#		p words
		word_counts = Hash.new(0)
		words.each { |word| word_counts[word[0]] += 1 }
		return word_counts
	end


	def anagram_groups
		# your code here

		source = "#{self}"
		
		#p "Input words phrase: " + source
		
		words = source.scan(/([\w]+)/)
		
		#p "Input words list: " + words.to_s
		
		#anagram_hash = Hash.new([])
		anagram_hash = Hash.new(Array.new([]))
		#anagram_hash = Hash.new()
		words.each { |word| 
			#word_key = word[0].downcase.sort
			
			#p "current word [word]: " + word.to_s
			#p "current word [word[0]]: " + word[0]
			
			#str.chars.sort.join
			word_key = word[0].downcase.chars.sort.join
			#p 'word_key: ' + word_key + '; Appending: ' + word[0]
			
			#anagram_hash[word_key].append(word[0])
			
			#if not anagram_hash.has_key?(word_key) 
			#if anagram_hash[word_key].nil?
				#p "Adding new key..."
				#anagram_hash[word_key] = word[0]
				#anagram_hash[word_key] = Array.new(word[0])
				#anagram_hash[word_key] << Array.new(word[0])
			#else
				#p "key already exists..."
				anagram_hash[word_key] << word[0]
				#anagram_hash[word_key] = anagram_hash[word_key] << word[0]
			#end
			#p "Current value for hash element (Anagram group) '" + word_key + "': " + anagram_hash[word_key].to_s
			
			
			
			}
		#p "Final anagram_hash: " + anagram_hash.to_s
		
		
		#anagram_groups = []
		anagram_groups = Array.new([])
		anagram_hash.each { |key, value| 
			#anagram_groups.append(value)
			
			#p "Appending anagram group to final array: " + value.to_s
			
			#anagram_groups = anagram_groups << value
			anagram_groups << value
			#p "current value for anagram_groups: " + anagram_groups.to_s

			}
		#p "Final anagram_groups array (value to be returned): " + anagram_groups.to_s
		
		
		anagram_groups
	end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end



###  Test Cases  ###


# 1. Palindrome? Tests #

#p !"adam".palindrome? ? "pass" : "fail"          # => should return false or nil

#p 'redivider'.palindrome? ? "pass" : "fail"  # should  be_a_palindrome
#p !'abracadabra'.palindrome? ? "pass" : "fail"  # should_not  be_a_palindrome
#p 'ReDivider'.palindrome? ?  "pass" : "fail"  # should be_a_palindrome
#p 'A man, a plan, a canal -- Panama'.palindrome? ?  "pass" : "fail"  # should be_a_palindrome
#p "Madam, I'm Adam!".palindrome? ? "pass" : "fail"  # should be_a_palindrome



# count_words Tests #

#puts    'now is the time'.count_words #.should be_a_kind_of Hash

#p    'Doo bee doo bee doo'.count_words #.should ==
#      {'doo' => 3, 'bee' => 2}

#p    'A man, a plan, a canal -- Panama!'.count_words #.should ==
#      {'man' => 1, 'plan' => 1, 'canal' => 1, 'a' => 3, 'panama' => 1}

#p    ''.count_words #.should ==  {}

#p    "  toucan".count_words #.should ==
#      {'toucan' => 1 }

#p    "four   four  \n four \t four!".count_words #.should ==
#      {'four' => 4}



# anagram_groups Tests #
p


