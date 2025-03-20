class Reconhecedor
  def initialize(texto)
    @texto = texto
  end

  def horario()
    regex = /(\d{1,2} e \d{1,2})|(\d{1,2}[:\s]\d{2})|(\d{1,2}( horas?))/
    resultRaw = regex.match(@texto).to_s
    resultDigits = resultRaw.scan(/\d{1,2}/)
    result = "#{resultDigits[0] || "00"}:#{resultDigits[1] || "00"}"
    return result
  end

  def tarefa()
    # ???
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
end
