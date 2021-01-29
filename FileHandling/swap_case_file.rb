module FilePractice
	def self.swap_case_file
		f1 = File.open("test","r")
		f1.rewind
		while(!f1.eof)
			str = f1.read
		end
		puts str.swapcase	
	end
end

FilePractice.swap_case_file