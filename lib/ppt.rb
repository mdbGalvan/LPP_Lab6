# File: ppt.rb

class Ppt

  # Método get de humano_tira, maquina_tirada
  attr_reader :humano_tirada, :maquina_tirada
  
  # Se muestra las tiradas válidas para la simulación del juego
  @@jugadas_posibles = {:rock => :scissor, :paper => :rock, :scissor => :paper}
  @@tiradas_validas = [:rock, :paper, :scissor]
  
  class << self
    
    def tiradas_validas
      return @@tiradas_validas
    end
    
    def jugadas_posibles
      return @@jugadas_posibles
    end
    
  end
  
end


