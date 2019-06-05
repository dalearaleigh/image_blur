class Image 
  
  def initialize(data) 
    @data = data 
  end 

  def output_image 
    @data.map { |arr| puts arr.join() }
  end 

  def blur(distance = 1) 
    @points = []
    @data.each_with_index {|row_data, row|
      row_data.each_with_index {|col_data, col|
        col_data == 1 ? @points.push([row, col]) : false 
      }
    }

    @points.each {|point|
      row = point[0]
      col = point[1]
      i = distance 
      while i > 0 
        @data[row - i][col] = 1 unless row == 0 
        @data[row + i][col] = 1 unless row + i == @data.length 
        @data[row][col - i] = 1 unless col == 0 
        @data[row][col + i] = 1 unless col + i == @data[row].length 
        if i != distance then 
          @data[row - i][col + (distance - i)] = 1 unless row == 0 
          @data[row - i][col - (distance - i)] = 1 unless row == 0 
        end 
          i -= 1 
        end 

      }

      return self.output_image
    end 

  end 

  image = Image.new([
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0], 
    [0,0,0,1,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0]
  ])

  