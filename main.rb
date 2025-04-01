require './classes/tarefa.rb'
require './classes/reconhecedor.rb'

texto = "Agendar com José reunião às 10:00 amanhã #trabalho"
reconhecedor = Reconhecedor.new(texto)
horario = reconhecedor.horario()
url = reconhecedor.url()
email = reconhecedor.email()
tags = reconhecedor.tags()
data = reconhecedor.data()
pessoa = reconhecedor.pessoa()
acao = reconhecedor.acao()
nova_tarefa = Tarefa.new(texto, tags, horario, data, acao, url, email, pessoa)
puts nova_tarefa
# puts nova_tarefa
