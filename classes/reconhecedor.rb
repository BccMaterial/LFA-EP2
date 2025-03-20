class Reconhecedor
  def initialize(texto)
    @texto = texto
  end

  def reconhecer_horario()
    regex = /(\d{1,2} e \d{1,2})|(\d{2}[:\s]\d{2})|((\d{1,2})( horas?)?)/
    return @texto.match(regex)
  end

  def reconhecer_tarefa()
    # ???
  end

  def reconhecer_url()
    regex = /http(s)?:\/\/(www\.)?[A-z\-]+(\.[A-z\-]+)*(:[0-9]+)?(\/\w+)*\/?(\?(\w+=\w+)+(&\w+=\w+)*)?/
    return @texto.match(regex)
  end

  def reconhecer_email()
    regex = /[A-z0-9]+[A-z0-9\.-]*@[A-z]+[A-z0-9\.-]*/
    return @texto.match(regex)
  end

  def reconhecer_tag()
    regex = /#\w+/
    return @texto.match(regex)
  end

  def reconhecer_pessoa()
    regex = /[A-Z]{1}[a-zà-ÿ]+/
    return @texto.match(regex)
  end
end
