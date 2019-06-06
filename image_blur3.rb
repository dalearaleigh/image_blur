class Image 
  def initialize(matrix) 
    @matrix = matrix 
  end 

  def find_coordinates()
    pair_list = []
    @matrix.each_with_index do |row, r|
      row.each_with_index do |val, c|
        if @matrix[r][c] == 1 
          pair_list.push [r,c]
        end 
      end 
    end 
    return pair_list
  end 

  def blur(distance)
    pair_list = find_coordinates ()
    pair_list.each do |r,c|
      0.upto(distance) do |x|
        0.upto(distance - x) do |y|
          @matrix[r - x][c - y] = 1 unless r - x < 0 || c - y < 0 
          @matrix[r + x][c - y] = 1 unless r + x > @matrix.length || c - y < 0 
          @matrix[r - x][c + y] = 1 unless r - x < 0 || c + y >= @matrix[0].length 
          @matrix[r + x][c + y] = 1 unless r + x >= @matrix.length || c + y >= @matrix[0].length 
        end 
      end 
    end 
  end 

  def output_image ()
    @matrix.each do |row|
      row.each do |c|
        print c 
        print ' ' 
      end 
      puts 
    end 
  end 

end 

one_pixel_image = Image.new( 
  [
    [0,0,0,0,0,0,0,0]
    [0,0,0,0,0,0,0,0]
    [0,0,0,0,0,0,0,0]
    [0,0,0,0,1,0,0,0]
    [0,0,0,0,0,0,0,0]
    [0,0,0,0,0,0,0,0]
    [0,0,0,0,0,0,0,0]
    [0,0,0,0,0,0,0,0]
  ]
  )

one_pixel_image.blur(3)
one_pixel_image.output_image()
