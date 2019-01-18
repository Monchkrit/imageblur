class Image

  # Here is my initializer. It is formatted per the spec from Coding Boot Camp that the array should be made from 4 arrays
  # or a two-dimensional array.
  def initialize(arr1, arr2, arr3, arr4)
    @image = []
    @row1 = [arr1]
    @row2 = [arr2]
    @row3 = [arr3]
    @row4 = [arr4]
    @image = [arr1, arr2, arr3, arr4]
  end

  def output_image
    @image.each do |x|
      x.each do |cell|
        print cell
      end
      puts "\n"
    end
 
    #print @image
  end

  def blur_image(distance)
    # This currently only works when the array is a square 4x4.
     @length = @image.length
      @width = 0
      @image.each do |x|
        x.each do |cell|
          @width += 1
        end
      end
        i = 0
        j = 0
        n = distance
        while n > 0
          i = 0
          j = 0         
          while i < @length
            j = 0
            while j < @width
              if @image[i][j] == 1

                  # This looks down from the rows
                  if i < @length - 1
                    if @image[i+1][j] == 0
                      @image[i+1][j] = 2
                    end
                  end

                  # This looks up from the rows
                  if i > 0 && @image[i-1][j] == 0
                    @image[i-1][j] = 2 
                  end

                  # This looks to the right until it gets to the end.
                  if @image[i][j+1] == 0
                    @image[i][j+1] = 2
                  end

                 # This looks to te left. I tried to set this so it will never look over the side of the array.
                 # I'm afraid of what might happen if my program does that too muc.
                  if j > 0 && @image[i][j - 1] == 0
                    @image[i][j - 1] = 2
                  end
              end
              j += 1
            end
            i += 1
          end

          i = 0
          j = 0
          while i < @length
            j = 0
            while j < @width
              if @image[i][j] == 2
                @image[i][j] = 1
              end
              j += 1
            end
            i += 1
          end
          n -= 1
          puts n
        end
       
      puts "Inside blur_image\n"
      puts "\n"
  end
end

image = Image.new([0, 0, 0, 0, 0, 0, 0],
                  [0, 0, 0, 0, 0, 0, 0],
                  [0, 0, 0, 1, 0, 0, 0],
                  [0, 0, 0, 0, 0, 0, 0])
image.output_image
image.blur_image(2)
image.output_image
