class ListaAfazeres
  def initialize()
    @tarefas = Array.new()
  end

  def add_tarefa(tarefa)
    @tarefas.append(tarefa)
  end

  def listar_tarefas()
    return @tarefas
  end
end
