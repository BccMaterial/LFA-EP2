class ListaAfazeres
  def initialize()
    @tarefas = Array.new()
  end

  def add_tarefa(tarefa)
    @tarefas.append(tarefa)
  end

  def to_s()
    converted_str = \
    "########################\n"+
    "### LISTA DE TAREFAS ###\n" +
    "########################"
    for tarefa in @tarefas
      converted_str += "\n#{tarefa}"
    end
    return converted_str
  end
end
