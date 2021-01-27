module ApplicationHelper

  def data_br(date)
    date.strftime("%d/%m/%Y")
  end

  def booleanSimNao(boolean)
    if boolean == nil then
      'Não'
    else
      if boolean == true then
        'Sim'
      else
        'Não'
      end
    end
  end

  def nome_dono(string)
    if string.nil? then
      "Nenhum"
    else
      string
    end
  end

end
