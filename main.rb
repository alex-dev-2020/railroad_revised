require_relative 'made_by'
require_relative 'instance_counter'
require_relative 'seed'
require_relative 'train'
require_relative 'cargo_train'
require_relative 'pass_train'
require_relative 'station'


puts 'количество инстанссов класса Train'
puts Train.instance
test_train_1 = Train.new('name_1', ' number_1', ' made_by_1')
puts test_train_1
puts 'количество инстанссов класса Train'
puts Train.instance
test_train_2 = Train.new('name_2', ' number_2', ' made_by_2')
puts test_train_2
puts 'количество инстанссов класса Train'
puts Train.instance
test_train_3 = Train.new('name_3', ' number_3', ' made_by_3')
puts test_train_3
puts 'количество инстанссов класса Train'
puts Train.instance


puts 'количество инстанссов класса Station'
puts Station.instance
test_station_1 = Station.new(' test_station_1')
puts test_station_1
puts 'количество инстанссов класса Station'
puts Station.instance
test_station_2 = Station.new(' test_station_2')
puts test_station_2
puts 'количество инстанссов класса Station'
puts Station.instance


puts Train.list

puts Station.list


