require_relative 'made_by'
require_relative 'instance_counter'
require_relative 'seed'
require_relative 'train'
require_relative 'cargo_train'
require_relative 'pass_train'
require_relative 'station'


puts 'количество инстансов класса Train'
puts Train.instance
test_train_1 = Train.new('train_1', 'ABC-12', ' made_by_1')
puts "Создан поезд: #{test_train_1.name} c номером: #{test_train_1.number}"
puts 'количество инстансов класса Train'
puts Train.instance
test_train_2 = Train.new('name_2', 'DEF34', ' made_by_2')
puts test_train_2.number
puts 'количество инстансов класса Train'
puts Train.instance
test_train_3 = Train.new('name_3', ' number_3', ' made_by_3')
puts test_train_3
puts 'количество инстансов класса Train'
puts Train.instance


puts 'количество инстансов класса Station'
puts Station.instance
test_station_1 = Station.new(' test_station_1')
puts test_station_1
puts 'количество инстансов класса Station'
puts Station.instance
test_station_2 = Station.new(' test_station_2')
puts test_station_2
puts 'количество инстансов класса Station'
puts Station.instance


puts Train.list

puts Station.list


