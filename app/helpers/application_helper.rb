module ApplicationHelper

  def data_br(date)
    date.strftime("%d/%m/%Y")
  end

  def booleanSimNao(boolean)
    if boolean.nil? then
      'Não'
    elsif boolean = true
      'Sim'
    elsif boolean = false
      'Não'
    end
  end

end
