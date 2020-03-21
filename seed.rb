# test objects generation

def seed
 cargo_test_train_1 = CargoTrain.new('cargo_test', '12345', 'tesla')
 pass_test_train_1 = PassTrain.new('pass_test', '54321', 'bosh')
 test_station_1 = Station.new('test_station_1')
 test_station_2 = Station.new('test_station_2')
 test_station_3 = Station.new('test_station_3')
  # route_test = Route.new(test_station_1, test_station_2)
  # @routes << route_test
end
