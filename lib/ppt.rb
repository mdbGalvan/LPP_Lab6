# File: ppt.rb

class Ppt

  # Método get de humano_tira, maquina_tirada
  attr_reader :humano_tirada, :maquina_tirada
  
  # @@ Variables Globales
  # Se muestra las tiradas válidas para la simulación del juego
  @@jugadas_posibles = {:rock => :scissor, :paper => :rock, :scissor => :paper}
  @@tiradas_validas = [:rock, :paper, :scissor]
  # Lista de resultados desde el punto de vista de la máquina
  @@resultados = ["maquina gana", "empatan", "maquina pierde"]
  
  # Método que usará el constructor de la clase new
  def initialize (tirada_humano)
    @humano_tirada = self.obtener_humano (tirada_humano)
    @maquina_tirada = self.obtener_maquina
  end
  
  # Devuelve el resultado del juego desde el punto de vista de la máquina
  def resultado
    result = case self.maquina_tirada
      when self.humano_tirada
	Ppt.resultados[1]
      when Ppt.jugadas_posibles[self.humano_tirada]
	Ppt.resultados[2]
      else 
	Ppt.resultados[0]
    end
    return result
  end
  
  # Se establece una tirada válida para el humano
  def obtener_humano (tirada_humano)
    raise RuntimeError unless Ppt.tiradas_validas.include? tirada_humano.to_sym
    return @humano_tirada = tirada_humano.to_sym
  end
  
  # Se establece una tirada válida para la máquina
  def obtener_maquina
    return @maquina_tirada = @@tiradas_validas.sample
  end
  
  # Se realiza el juego que devuelve el ganador
  def jugar
    ganador = case self.maquina_tirada
      when self.humano_tirada
	"empatan"
      when Ppt.jugadas_posibles[self.humano_tirada]
	"humano"
      else 
	"maquina"
    end
    return ganador
  end
  
  # Definimos dentro los métodos de clase
  class << self
   
    # Métodos get de las variables globales
    
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


