require_relative "lib/post"
require_relative "lib/task"
require_relative "lib/link"
require_relative "lib/memo"

puts "Что хотите записать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "#{index}. #{type}"
  end
  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Сохранено"