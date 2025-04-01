require './classes/tarefa.rb'
require './classes/reconhecedor.rb'
require './classes/lista_afazeres.rb'

# texto = "Agendar com José e com Maria reunião às 10:00 amanhã #trabalho"
# reconhecedor = Reconhecedor.new(texto)
# horario = reconhecedor.horario()
# url = reconhecedor.url()
# email = reconhecedor.email()
# tags = reconhecedor.tags()
# data = reconhecedor.data()
# pessoas = reconhecedor.pessoas()
# acao = reconhecedor.acao()
# nova_tarefa = Tarefa.new(texto, tags, horario, data, acao, url, email, pessoas)
# puts nova_tarefa
# puts nova_tarefa

lista_afazeres = ListaAfazeres.new()
loop do
  puts "Comandos:"
  puts "0 - Sair"
  puts "L - Listar tarefas"
  puts "Insira sua tarefa ou seu comando: "
  input_usuario = gets.chomp 

  if input_usuario === "0"
    puts "Saindo..."
    exit 0
  end

  if input_usuario.upcase === "L"
    puts lista_afazeres 
    next
  end

  reconhecedor = Reconhecedor.new(input_usuario)
  nova_tarefa = Tarefa.new(
    input_usuario, 
    reconhecedor.tags(), 
    reconhecedor.horario(),
    reconhecedor.data(),
    reconhecedor.acao(),
    reconhecedor.url(),
    reconhecedor.email(),
    reconhecedor.pessoas()
  )
  puts "Tarefa criada:"
  puts nova_tarefa

  puts "Tarefa adicionada na lista de afazeres."
  lista_afazeres.add_tarefa(nova_tarefa)
end
