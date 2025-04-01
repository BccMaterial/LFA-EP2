# Por enquanto, usaremos todos os parâmetros como opcionais

class Tarefa
  def initialize(texto, tags=nil, horario=nil, data=nil, acao=nil, url=nil, email=nil, pessoas=nil)
    @texto = texto        # Texto inserido pelo usuário
    @tags = tags          # Tags reconhecidas no texto
    @data = data          # Data reconhecida no texto
    @horario = horario    # Horario reconhecido no texto
    @acao = acao          # Ações que nós escolhemos reconhecidas no texto *
    @url = url            # Url reconhecida no texto *
    @email = email        # E-mail reconhecido no texto *
    @pessoas = pessoas      # Pessoa reconhecida no texto *

    # Os marcados com * precisa de algum ajuste de modelagem:
    # - É necessário reconhecer vários e-mails?
    # - É necessário reconhecer várias pessoas?
    # - É necessário reconhecer várias URLs?
    # - Quais ações vamos escolher? (Comentado no reconhecedor.rb)
  end

  def to_s
    return \
    "Texto: #{@texto}\n" +
    "Tags: #{@tags.join(" ")}\n" +
    "Data: #{@data.strftime('%d/%m/%Y')}\n" +
    "Horario: #{@horario}\n" +
    "Email: #{@email}\n" +
    "Url: #{@url}\n" +
    "Pessoas: #{@pessoas}\n" +
    "Ação: #{@acao}"
  end
end
