# File: ppt_main.rb

require "ppt"

puts "\t Se ha utilizado Desarrollo dirigido por pruebas usando"
puts "\t la herramienta Rspec."
puts "\n"



print "\t Elige una opcion: "
STDOUT.flush
jugada = gets.chomp

A = Ppt.new(jugada)
puts "\t Tu jugaste:    #{A.humano_tirada}"
puts "\t Maquina jugo:  #{A.maquina_tirada}"
puts "\t El ganador es: #{A.jugar}"
puts "\t #{A.resultado}"
puts "\n"




