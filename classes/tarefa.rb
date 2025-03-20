# Por enquanto, usaremos todos os parâmetros como opcionais

class Tarefa
  def initialize(tag=nil, horario=nil, dia=nil, acao=nil, url=nil, email=nil, pessoa=nil)
    @tag = tag
    @dia = dia
    @horario = horario
    @acao = acao
    @url = url
    @email = email
    @pessoa = pessoa
  end
end
