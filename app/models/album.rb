class Album
	attr_reader :npages
	
	def initialize
		@npages = []
	end
	
	def add_page(page)
		@npages << page
	end

end
