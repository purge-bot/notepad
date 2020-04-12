class Link < Post
  def initialize
    # Вызываем конструктор родителя
    super

    # Создаем специфичную для ссылки переменную экземпляра @url — адрес, куда
    # будет вести ссылка.
    @url = ''
  end

  def read_from_console
    puts "Адрес ссылки"
    @url = STDIN.gets.chomp

    puts "Описание"
    @text = STDIN.gets.chomp
  end

  # Этот метод будет возвращать массив из трех строк: адрес ссылки, описание
  # и дата создания
  def to_strings
    time_string = "Создано: #{@created_at.strftime("у-%m-%d, %H-%M-%S")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end