require 'date'

# Obs.:
# Vamos precisar escolher ações para serem reconhecidas pelas tarefas.
# Sugestões:
# - Agendar
# - Marcar
# - Lembrar
# - Ligar
# - Pegar
# - Comprar
# - Reservar
# - Publicar

class Reconhecedor
  def initialize(texto)
    @texto = texto
  end

  def horario()
    regex = /(\d{1,2} e \d{1,2})|(\d{1,2}h\d{1,2})|(\d{1,2}[:\s]\d{2})|(\d{1,2}( horas?))/
    resultRaw = regex.match(@texto).to_s
    resultDigits = resultRaw.scan(/\d{1,2}/)
    result = "#{resultDigits[0] || "00"}:#{resultDigits[1] || "00"}"
    return result
  end

  def url()
    regex = /http(s)?:\/\/(www\.)?[A-z\-]+(\.[A-z\-]+)*(:[0-9]+)?(\/\w+)*\/?(\?(\w+=\w+)+(&\w+=\w+)*)?/
    return @texto.match(regex)
  end

  def email()
    regex = /[A-z0-9]+[A-z0-9\.-]*@[A-z]+[A-z0-9\.-]*/
    return @texto.match(regex)
  end

  def tags()
    regex = /#[\w-]+/
    return @texto.scan(regex)
  end

  def pessoas()
    regex = /com\s[A-Z]{1}[a-zà-ÿ]+/
    matches_not_clean = @texto.scan(regex)
    pessoas = []

    for match in matches_not_clean
      unparsed_str = match.to_s
      pessoa = unparsed_str.match(/[A-Z]{1}[a-zà-ÿ]+/)
      pessoas.push pessoa.to_s
    end

    return pessoas
  end

  def data()
    regex = /((hoje)|((depois\sde\s)?amanhã))|(\d{2}\/\d{2}(\/\d{2}(\d{2})?)?)|(\d{2}(\sde)?\s\w+((\sde)?\d{4}))/
    result = @texto.match(regex).to_s
    parsed_date = nil

    if result == "hoje"
      parsed_date = DateTime.now
    elsif result == "amanhã"
      parsed_date = DateTime.now
      parsed_date = parsed_date + 1
    elsif result == "depois de amanhã"
      parsed_date = DateTime.now
      parsed_date = parsed_date + 2
    else
      parsed_date = DateTime.parse(result)
    end

    return parsed_date
  end

  def acao()
    regex = /([Aa]gend|[Mm]arc|[Ll]embr|[Ll]ig|[Pp]eg|[Cc]ompr|[Rr]eserv|[Pp]ublic)(ar|er|em|amos|ei|de|ue|bre|ve)/
    texto = @texto.match(regex).to_s
    return texto
  end
end
