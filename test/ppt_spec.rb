# File : ppt_spec.rb

require 'ppt'
require 'spec_matchers'

describe Ppt do
  
  before :each do
    @ppt = Ppt.new("paper")
    @pptClass = Ppt
  end
  
  describe "#new" do
    it "PiedraPapelTijeras" do
      @ppt.should be_an_instance_of Ppt
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
      @pptClass.respond_to?("tiradas_validas").should be_true
      @pptClass.tiradas_validas.should include :rock
      @pptClass.tiradas_validas.should include :paper
      @pptClass.tiradas_validas.should include :scissor
      @pptClass.tiradas_validas.should_not include :tijera
    end
  end

  describe "$jugadas_posibles" do
    it "Debe existir una lista de jugadas posibles y quien gana" do
      @pptClass.jugadas_posibles.should be_a Hash
      @pptClass.respond_to?("jugadas_posibles").should be_true
      @pptClass.jugadas_posibles.should include :rock
      @pptClass.jugadas_posibles.should include :paper
      @pptClass.jugadas_posibles.should include :scissor
      @pptClass.jugadas_posibles.should_not include :papel
      @pptClass.jugadas_posibles.should include :rock => :scissor
      @pptClass.jugadas_posibles.should include :paper => :rock
      @pptClass.jugadas_posibles.should include :scissor => :paper
      @pptClass.jugadas_posibles.should_not include :scissor => :rock
    end
  end

  describe "#obtener_humano" do
    it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
      @ppt.respond_to?("obtener_humano").should be_true
      lambda{@ppt.obtener_humano("fuego")}.should raise_error 
      lambda{@ppt.obtener_humano("rock", "paper")}.should raise_error
      lambda{@ppt.obtener_humano("")}.should raise_error 
    end
  end
  
  describe "#obtener_maquina" do
    it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
      @ppt.respond_to?("obtener_maquina").should be_true
    end
  end
  
  describe "resultado" do
    it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
      @pptClass.resultados.should be_a Array
      @pptClass.respond_to?("resultados").should be_true
      @pptClass.resultados.should include "maquina gana"
      @pptClass.resultados.should include "empatan"
      @pptClass.resultados.should include "maquina pierde"
      @pptClass.resultados.should_not include "humano gana"
    end
    
    it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
       @ppt.respond_to?("resultado").should be_true
       @ppt.resultado.should_not be_nil
       maquina = @ppt.obtener_maquina()
       humano = @ppt.obtener_humano("rock")
       @pptClass.resultados.should include @ppt.resultado()
    end
  end

  describe "#play" do
    it "Se debe invocar al metodo jugar() para determinar el ganador" do 
      @ppt.respond_to?("jugar").should be_true
      @ppt.jugar.should_not be_nil
      ganador = ["humano", "maquina", "empatan"]
      ganador.include?(@ppt.jugar).should be_true
    end
  end
  
  describe "tiradas_aleatorias" do
    it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
      tirada_maquina = []
      50.times do
	tirada_maquina << @ppt.obtener_maquina
      end
      tirada_maquina.uniq.size.should == @pptClass.tiradas_validas.size
    end
    
    it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
      tirada_maquina = []
      50.times do
	@ppt.obtener_maquina
	if @ppt.humano_tirada != @ppt.maquina_tirada
	  tirada_maquina << @ppt.maquina_tirada
	end
      end
      tirada_maquina.uniq.size.should > 0
    end    
  end  
  
end

