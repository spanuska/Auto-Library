class User < ActiveRecord::Base

	def return(book)
		Shelf.return(book)
		book.return
		increase_allowance
	end

	private

		def decrease_allowance
			if self.allowance == 0 
				p "The maximum number of items anyone may have out at a time is 6. #{self.name} has already taken out 6 items. Please return one or more intems in order to check out more."
			else
				self.allowance -= 1 unless self.allowance == 0
			end
		end

		def increase_allowance
			puts self.allowance
			self.allowance += 1 unless self.allowance == 6
			puts "#{self.name} is now able to check out this many items: #{self.allowance}."
		end

end
