class Image
  attr_accessor :image

    def initialize(image)
      @image = image
    end

    def get_ones
      ones = []
      image.each_with_index do |num, row_index|
        num.each_with_index do |item, column_index|
          if item == 1
            ones << [row_index, column_index]
          end
        end
      end

      def blur
        number_of_rows = image.length
        number_of_columns = image[0].length
        get_ones.each do |coord|
          image[coord[0]][coord[1] + 1] = 1 unless coord[1]+1 > number_of_columns
          image[coord[0]][coord[1] - 1] = 1 unless coord[1] == 0
          image[coord[0] + 1][coord[1]] = 1 unless coord[0] + 1 > number_of_rows
          image[coord[0] - 1][coord[1]] = 1 unless corrd[0] == 0
        end
    end
end


image = Image.new [
  [0,0,1,0],
  [0,1,0,0],
  [0,0,0,1],
  [0,1,0,0]
]

image.blur
