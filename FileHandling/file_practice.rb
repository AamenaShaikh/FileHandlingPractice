module FilePractice
	def self.menu
		condition = 1
		while condition != 0
			puts "\nFile Operations Menu :\n******************************\n"
			puts "1.Count of character, words and lines\n"
			puts "2.File in reverse.\n"
			puts "3.Frequency of particular word in the file.\n"
			puts "4.Lower case letter in place of upper case letter.\n"
			puts "Enter your choice : Press 0 to exit"
			choice = gets.chomp.to_i
			condition = choice
			case choice	
			when 1 
				require_relative 'count_file'
			when 2
				require_relative 'file_reverse'
			when 3
				require_relative 'frequency_of_word'
			when 4
				require_relative 'swap_case_file'
			when 0
				break
			else
				puts "You have entered wrong choice"
			end
		end
	end
end

FilePractice.menu