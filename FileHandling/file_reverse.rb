module FilePractice
	def self.file_reverse
		f1 = File.open("test","r")
		f1.rewind
		while(!f1.eof)
			str = f1.read
		end
		puts "File contents in revrse are : " + str.reverse
	end
end

FilePractice.file_reverse