# File: ppt.rb

class Ppt

  # Método get de humano_tira, maquina_tirada
  attr_reader :humano_tirada, :maquina_tirada
  
  # Se muestra las tiradas válidas para la simulación del juego
  @@jugadas_posibles = {:rock => :scissor, :paper => :rock, :scissor => :paper}
  @@tiradas_validas = [:rock, :paper, :scissor]
  # Lista de resultados desde el punto de vista de la máquina
  @@resultados = ["Maquina Gana", "Empatan", "Maquina Pierde"]
  
  # Devuelve el resultado del juego desde el punto de vista de la máquina
  def resultado
    result = case self.maquina_tirada
      when @humano_tirada
	@@resultados[1]
      when @@jugadas_posibles[@humano_tirada]
	@@resultados[2]
      else 
	@@resultados[0]
    end
    return result
  end
  
  # Se establece una tirada válida para el humano
  def obtener_humano (tirada_maquina)
    raise RuntimeError unless @@tiradas_validas.include? tirada_maquina.to_sym
    return @humano_tirada = tirada_maquina.to_sym
  end
  
  # Se establece una tirada válida para la máquina
  def obtener_maquina ()
    return @maquina_tirada = @@tiradas_validas.sample
  end
  
  # Métodos de clases 
  class << self
   
    # Método get de las variables globales
    def tiradas_validas
      return @@tiradas_validas
    end
    
    def jugadas_posibles
      return @@jugadas_posibles
    end
    
    def resultados
      return @@resultados
    end
    
  end # End Class
  
end


