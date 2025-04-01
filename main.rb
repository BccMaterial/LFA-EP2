require './classes/tarefa.rb'
require './classes/reconhecedor.rb'

# Texto de exemplo
texto = "Agendar reunião com José Silva às 14:30 amanhã #trabalho https://empresa.com contato@empresa.com"

# Criação do reconhecedor e chamadas de métodos
reconhecedor = Reconhecedor.new(texto)

horario = reconhecedor.horario()      # "14:30"
url = reconhecedor.url()              # "https://empresa.com"
email = reconhecedor.email()          # "contato@empresa.com"
tags = reconhecedor.tags()            # ["#trabalho"]
data = reconhecedor.data()            # Data de amanhã
pessoa = reconhecedor.pessoa()        # "José Silva"
acao = reconhecedor.acao()            # "Agendar"

# Criação de uma nova tarefa
nova_tarefa = Tarefa.new(texto, tags, horario, data, acao, url, email, pessoa)

# Exibição da tarefa
puts nova_tarefa