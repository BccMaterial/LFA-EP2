require './classes/tarefa.rb'
require './classes/reconhecedor.rb'

texto = "Me lembre de acessar amanhã o site https://google.com.br com a conta thiagopls1@hotmail.com às 10:30 #trabalho #importante"
reconhecedor = Reconhecedor.new(texto)
horario = reconhecedor.horario()
url = reconhecedor.url()
email = reconhecedor.email()
tags = reconhecedor.tags()
data = reconhecedor.data()
nova_tarefa = Tarefa.new(texto, tags, horario, data, nil, url, email, nil)
puts nova_tarefa
# puts nova_tarefa
