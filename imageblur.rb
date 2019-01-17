class Image
	attr_accessor :image

	def initialize(arr0, arr1, arr2, arr3)
		@image = Array.new(4)
		@row0 = Array.new(4)
		@row1 = Array.new(4)
		@row2 = Array.new(4)
		@row3 = Array.new(4)
		@row0 = arr0
		@row1 = arr1
		@row2 = arr2
		@row3 = arr3
		@image = @row0, @row1, @row2, @row3
		
	end 
	def output_image
		i = 0
		j = 0
		while i < 4
			j = 0
			while j < 4
		#@image.each { |i| print i, "\n"}
				print @image[i][j]
				j += 1
			end
		i += 1
		puts "\n"
		end
	end
end
image = Image.new([0, 0, 0, 0],
									[0, 1, 0, 0],
									[0, 0, 0, 1],
									[0, 0, 0, 0])
image.output_image