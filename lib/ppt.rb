# File: ppt.rb

class Ppt

  # Método get de humano_tira, maquina_tirada
  attr_reader :humano_tirada, :maquina_tirada
  
  # Se muestra las tiradas válidas para la simulación del juego
  @@jugadas_posibles = {:rock => :scissor, :paper => :rock, :scissor => :paper}
  @@tiradas_validas = [:rock, :paper, :scissor]
  
  # Se obtiene una tirada válida para el humano
  def obtener_humano (tirada_maquina)
    raise RuntimeError unless @@tiradas_validas.include? tirada_maquina.to_sym
    return @humano_tirada = tirada_maquina.to_sym
  end
  
  # Se obtiene una tirada válida para la máquina
  def obtener_maquina ()
    return @maquina_tirada = @@tiradas_validas.sample
  end
  
  # Métodos de clases para las variables globales
  class << self
    
    def tiradas_validas
      return @@tiradas_validas
    end
    
    def jugadas_posibles
      return @@jugadas_posibles
    end
    
  end
  
end



