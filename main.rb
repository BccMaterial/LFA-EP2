require './classes/tarefa.rb'
require './classes/reconhecedor.rb'

texto = "Marque uma agenda às 10:30"
reconhecedor = Reconhecedor.new(texto)
puts reconhecedor.reconhecer_horario()
# nova_tarefa = Tarefa.new
# puts "Nova tarefa criada"
# puts nova_tarefa
