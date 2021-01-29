module FilePractice
	def self.count_file
		c_count = 0
		w_count = 0
		l_count = 0
		f1 = File.open("test","r")
		f1.rewind
		while(!f1.eof)
			f1.each_byte do |ch|
				c_count += 1
				if ch == 32
					w_count += 1
				elsif ch == 10
					l_count += 1
					w_count += 1
				end
			end
		end
		puts "Number of characters are : #{c_count}"
		puts "Number of words are : #{w_count}"
		puts "Number of lines are : #{l_count}"
	end
end

FilePractice.count_file