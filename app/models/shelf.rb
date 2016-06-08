class Shelf < ActiveRecord::Base

	def self.return(book)
		store(book)
	end

	private

		def store(book)
			binding.pry
			p "this stores the book on the shelf"
		end

end
