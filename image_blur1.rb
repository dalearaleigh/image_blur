class Image
  attr_reader :values

  def initialize(array)
    @values = array
  end

  def output_image
    @values.each do |x|
     puts x.join
      end
    end
  end

image = Image.new([[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]])

image.output_image