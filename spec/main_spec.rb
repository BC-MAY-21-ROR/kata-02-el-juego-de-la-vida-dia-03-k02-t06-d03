require 'main'

RSpec.describe Matriz do
    context "prueba" do #Prueba para entender el funcionamiento de la tecnolgia...
        it "suma" do
            juego = Matriz.new(5,6)
         expect(juego.suma(5)).to eq(25)
        end
    end

     context "creacion de matriz" do #Verificar que se cree la matriz
         it "prueba" do
             juego = Matriz.new(5,6)
             expect(juego.llenar()) != [] #condicion para validar que la matriz no esta vacia
         end
     end
    
   # context "Analizar muertas"
#     it "setup" do 
#         @juego = Kata.new(5,6)
#         expect(@juego.suma(6)).to eq(25)
#     end

# #     it exercise do
        
# #     end

    
end        