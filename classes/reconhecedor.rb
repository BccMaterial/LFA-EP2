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

  def pessoa()
    regex = /[A-Z]{1}[a-zà-ÿ]+/
    return @texto.match(regex)
  end

  def data()
    regex = /(\d{2}\/\d{2}(\/\d{2}(\d{2})?)?)|(\d{2}(\sde)?\s\w+((\sde)?\s\d{4})?)|((hoje)|((depois\sde\s)?amanhã))/
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
    regex = /(agendar|marcar|lembrar|ligar|pegar|comprar|reservar|publicar)/
    return @texto.match(regex).to_s
  end
end
