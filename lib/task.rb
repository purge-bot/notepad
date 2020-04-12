require 'date'

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
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? (ДД.ММ.ГГГГ) "
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)

  end

  # Этот метод будет возвращать массив из трех строк: дедлайн задачи, описание
  # и дата создания
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H-%M-%S")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end