class Reconhecedor
  def initialize(texto)
    @texto = texto
  end

  def reconhecer_horario()
    # Regex: (http(s)?:\/\/(www\.)?)?[A-z\-]+(\.[A-z\-]+)*(:[0-9]+)?(\/\w+)*\/?(\?(\w+=\w+)+(&\w+=\w+)*)?
  end

  def reconhecer_tarefa()
    # ???
  end

  def reconhecer_url()
    # Regex http(s)?:\/\/(www\.)?[A-z\-]+(\.[A-z\-]+)*(:[0-9]+)?(\/\w+)*\/?(\?(\w+=\w+)+(&\w+=\w+)*)?
    # Obs.: Esse regex não reconhece sem o https://
  end

  def reconhecer_email()
    # Regex: [A-z0-9]+[A-z0-9\.-]*@[A-z]+[A-z0-9\.-]*
  end

  def reconhecer_tag()
    # Regex: #\w+
  end

  def reconhecer_pessoa()
    # Regex: [A-Z]{1}[a-zà-ÿ]+
  end
end
