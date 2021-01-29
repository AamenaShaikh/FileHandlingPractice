class FileHandling
	attr_accessor :f1, :file_name

	def create_file
		puts "Enter file name"
		@file_name = gets.chomp.to_s
		@f1 = File.open(@file_name,"w+")
		if @f1
			puts "File created successfully!!!"
		end
	end

	def write_to_file
		puts "Write to file..."
			@f1.syswrite(gets.chomp.to_s)
	end

	def read_file
		puts "Reading contents from file :"
		@f1.rewind
		while !@f1.eof
			puts @f1.readlines
		end
	end

	def delete_file
		puts "Deleting file\n Are you sure you want to delete? Y / N"
		choice = gets.chomp.to_s
		if choice == "Y"
			@f1.close
			File.delete(@f1)
			puts "File deleted"
		else
			"File not deleted"
		end
	end

	def merge_two_files
		puts "Enter names of 2 files"
		file1 = gets.chomp.to_s
		file2 = gets.chomp.to_s
		f1 = File.open("#{file1}","w+")
		f2 = File.open("#{file2}","w+")
		puts "Enter contents of #{file1}"
		f1.syswrite(gets.chomp.to_s)
		puts "Enter contents of #{file2}"
		f2.syswrite(gets.chomp.to_s)
		output = File.open("output","a")
		f1.rewind
		f2.rewind
		while !f1.eof
			str = f1.read
			output.syswrite(str)
		end
		while !f2.eof
			str = f2.read
			output.syswrite(str)
		end
		output.close
		output = File.open("output","r")
		puts "Created new file #{File.basename(output)}"
		puts "Reading from #{File.basename(output)} file"
		while !output.eof
			puts output.read
		end
	end

	def display_info
		f_name = File.basename(@f1)
		puts "File name : #{f_name}"
		puts "Extension of file is : #{File.extname(f_name)}"
		puts "Size of file is : #{File.size(f_name)}"
		puts "Creation time of file is : #{File.birthtime(f_name)}"
	rescue NotImplementedError => e
		puts e.message
	end

	def search_word
		puts "Enter file name"
		f_name=gets.chomp.to_s
		file1 = File.open(f_name,"r")
		puts "Enter word to search for"
		word = gets.chomp.to_s
		puts File.read(f_name).include?(word)
	end
end

obj1 = FileHandling.new
condition = 1
while condition != 0
	puts "\nFile Operations Menu :\n******************************\n"
	puts "1.Create a file (which will accept name)\n"
	puts "2.Read a file\n"
	puts "3.Delete a file\n"
	puts "4.Merge 2 file and create new one\n"
	puts "5.Display file information (Like file name, extension, size, date of creation)\n"
	puts "6.Search anything in file.\n"
	puts "Enter your choice : Press 0 to exit"
	choice = gets.chomp.to_i
	condition = choice
	case choice	
	when 1 
		obj1.create_file
		obj1.write_to_file
	when 2
		obj1.read_file
	when 3
		obj1.delete_file
	when 4
		obj1.merge_two_files
	when 5
		obj1.display_info
	when 6
		obj1.search_word
	when 0
		break
	else
		puts "You have entered wrong choice"
	end
end

