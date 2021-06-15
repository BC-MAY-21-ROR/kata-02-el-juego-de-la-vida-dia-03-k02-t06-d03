# frozen_string_literal: true

require 'main'

RSpec.describe Matriz do
  # #  ejemplo sobre uso de rspec
  # context 'prueba' do # Prueba para entender el funcionamiento de la tecnolgia...
  #   it 'suma' do
  #     juego = Matriz.new(5, 6)
  #     expect(juego.suma(5)).to eq(25)
  #   end
  # end
  
  let(:matriz) { Matriz.new(5,6) }
  let(:matrix) { matriz.build}

  context 'validar creacion de matriz' do # Verificar que se cree la matriz
    it 'creacion' do
      expect(matrix) != [] # condicion para validar que la matriz no esta vacia
    end
  end

  context 'prueba de muestra de matriz' do
    it "muestra" do
      juego = Show.new(5, 6, matrix)
      expect(juego.show) != ''
    end
  end

  context 'validar bordes muertos'do
    it 'Muerto' do
      muerto = Condiciones.new(5,6,matrix)
      muerto.matar_bordes
      5.times do |i|
        6.times do |x|
          if i == 0 || i == 5 || x == 0 || x == 6
            #it 'Muerto' do
            expect(matrix[i][x]).to eq' ° '
            #end 
          end
        end
      end
    end
  end
end
