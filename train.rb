#  class Train
class Train

  attr_reader :name, :type, :wagons, :current_station, :number, :list
  include MadeBy
  include InstanceCounter
  @@list = {}


  def self.list
    @@list
  end

  def initialize (name, number, made_by)
    @name = name
    @number = number
    @made_by = made_by
    @wagons = []
    @speed = 0
    @@list[number] = self
    register_instance
  end

  def self.find(number)
    @@list[number]
  end
end

