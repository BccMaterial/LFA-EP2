require './classes/tarefa.rb'
require './classes/reconhecedor.rb'

texto = "Me lembre de acessar amanhã o site https://google.com.br com a conta thiagopls1@hotmail.com às 10:30 #trabalho #importante"
reconhecedor = Reconhecedor.new(texto)
puts reconhecedor.horario()
puts reconhecedor.url()
puts reconhecedor.email()
puts reconhecedor.tags()
puts reconhecedor.data()
# nova_tarefa = Tarefa.new
# puts "Nova tarefa criada"
# puts nova_tarefa
