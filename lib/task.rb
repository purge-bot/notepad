class Task < Post
  def initialize
    # Вызываем конструктор родителя
    super

    # Создаем специфичную для ссылки переменную экземпляра @due_date — время, к
    # которому задачу нужно выполнить
    @due_date = Time.now
  end

  #ввод содержимого Задача
  def read_from_console
  end

  # Этот метод будет возвращать массив из трех строк: дедлайн задачи, описание
  # и дата создания
  def to_strings
  end
end