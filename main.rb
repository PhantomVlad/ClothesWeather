require_relative "lib/thing"
require_relative "lib/collection_clothes"

current_paths_files = Dir["#{__dir__}/data/*.txt"]

clothes = []

current_paths_files.each do |current_path_file|
  data = File.readlines(current_path_file, chomp: true)
  data[2] = data[2].delete("()").split
  clothes << Thing.new(data[0], data[1], data[2])
end

collection_clothes = CollectionClothes.new(clothes)

puts "Сколько градусов за окном? (можно с минусом)"
input_temperature = gets.to_i
collection_clothes.choice_clothes(input_temperature)

puts "Предлагаем вам сегодня надеть:"
puts
puts collection_clothes.choice_clothes(input_temperature)
