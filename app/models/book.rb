class Book < ActiveRecord::Base

	def return
		make_available
	end

	private

		def make_available
			self.update(available: true)
		end

		def make_unavailable
			self.update(available: false)
		end

end
