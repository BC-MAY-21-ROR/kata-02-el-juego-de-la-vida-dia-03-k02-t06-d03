# frozen_string_literal: true

# Codigo para juego de la vida
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
    @grid.each do |i|
      @largo.times do |_x|
        if rand(2).zero?
          i.push(' ° ')
        else
          i.push(' * ')
        end
      end
    end
    @grid
  end
end

class Show < Matriz
  def initialize(ancho, largo, grid)
    super(ancho, largo)
    @grid = grid
  end

  def show
    (0..@ancho - 1).each do |i|
      cadena = ''
      (0..@largo - 1).each do |x|
        cadena += @grid[i][x]
      end
      puts cadena
    end
  end
end

class Condiciones < Matriz
  def initialize(ancho, largo, grid)
    super(ancho, largo)
    @grid = grid
  end

  #Matar celulas en las orillas
  def matar_bordes
    (0..@ancho - 1).each do |i|
      (0..@largo).each do |x|
        @grid[i][x] = ' ° ' if i.zero? || i == @ancho - 1 || x.zero? || x == @largo - 1
        
      end
    end
  end
  
  # #Contar los vecinos de las celulas
  # def conteo_vecinos
    
  # end
end
