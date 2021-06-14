#Codigo para juego de la vida
class Matriz
  def initialize(ancho, largo)
    @ancho = ancho
    @largo = largo
    @grid = []
  end

  def build
      @ancho.times do |_i|
        @grid.push([])
      end
      llenar
  end

  def llenar
    @ancho.times do |i|
        @largo.times do |_x|
            if rand(2).zero?
                @grid.push(' ° ')
            else
                @grid.push(' * ')
            end
        end
    end
    @grid
  end

  def suma(valor)
    valor*valor
  end
end

class Show < Matriz
	def initialize(ancho, largo, grid)
		super(ancho, largo)
		@grid = grid
	end

	def show
		(0..@ancho - 1).each do |i|
			cadena = ""
			(0..@largo).each do |x|
				cadena += @grid[i][x]
			end
			puts cadena
		end
	end

	
end