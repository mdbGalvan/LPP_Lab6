
require "ppt"

describe Ppt do
  before :each do
    @ppt = Ppt.new()
    @pptClass = Ppt
  end
  
  describe "#new" do
    it "PiedraPapelTijeras" do
      should be_an_instance_of Ppt
    end
  end
    
  describe "#humano_tirada" do
    it "Debe existir una tirada para el humano" do
      @ppt.respond_to?("humano_tirada").should == true
    end
  end
  
  describe "#maquina_tirada" do
    it "Debe existir una tirada para la maquina" do
      @ppt.respond_to?("maquina_tirada").should equal true
    end
  end
  
  describe "$tiradas_validas" do
    it "Debe existir una lista de tiradas validas" do 
      @pptClass.tiradas_validas.should be_a Array
      @pptClass.tiradas_validas.should include :rock
      @pptClass.tiradas_validas.should include :paper
      @pptClass.tiradas_validas.should include :scissor
    end
  end
  
  #it "Debe existir una lista de jugadas posibles y quien gana" 
  #it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" 
  #it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" 
  #it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" 
  #it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" 
  #it "Se debe invocar al metodo jugar() para determinar el ganador" 
  #it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" 
  #it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" 
  
end

