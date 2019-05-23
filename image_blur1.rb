class Image
  attr_reader :values

  def initialize(array)
    @values = array
  end

  def output_image

    @new_string = ''
    @values.each do |x|

      x.each do |cell|
        @new_string += cell.to_s
      end

      puts @new_string
      @new_string = ''
    end
  end
end


image = Image.new([[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]])

image.output_image