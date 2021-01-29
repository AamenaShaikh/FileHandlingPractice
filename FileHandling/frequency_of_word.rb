module FilePractice
	def self.frequency_of_word
		count = 0
		f1 = File.open("test","r")
		f1.rewind
		puts "Enter a word to find the frequency of word"
		word = gets.chomp.to_s
		while(!f1.eof)
			str = f1.read
		end
		word_array = str.split
		word_array.each do |w|
			if w == word
				count += 1
			end
		end
		puts "Total count of #{word} is : #{count}"
	end
end

FilePractice.frequency_of_word