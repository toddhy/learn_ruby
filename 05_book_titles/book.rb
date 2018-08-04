require_relative '../03_simon_says/simon_says.rb'
class Book
	attr_accessor :title

	def title=(new_title)
		@title = titleize(new_title)
	end
end
