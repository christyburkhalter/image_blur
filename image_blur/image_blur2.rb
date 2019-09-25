class Image

    def initialize(pixel)
      @pixel = pixel
    end

    def find_ones
      ones = []
      pixel.each_with_index do |n, row|
        num.each_with_index do |i, col|
          if i == 1
            ones << [row, col]
          end
        end
      end

      def blur
        number_of_rows = pixel.length
        number_of_columns = pixel[0].length
        find_ones.each do |coord|
          pixel[coord[0]][coord[1] + 1] = 1 unless coord[1]+1 > number_of_columns
          pixel[coord[0]][coord[1] - 1] = 1 unless coord[1] == 0
          pixel[coord[0] + 1][coord[1]] = 1 unless coord[0] + 1 > number_of_rows
          pixel[coord[0] - 1][coord[1]] = 1 unless corrd[0] == 0
      end
    end
end
image.blur
