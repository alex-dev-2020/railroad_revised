class Station
  attr_reader :name, :trains, :list
  include InstanceCounter
  @@list = []


  def initialize(name)
    @name = name
    @trains = []
    @@list << self
    register_instance
  end

  def self.list
    @@list
  end

  def self.all
    @@list
  end

  def train_in(train)
    @trains << train
  end

  def trains_by_type(train_type)
    @trains.select { |train| train.type == train_type }
  end

  def train_out(train)
    @trains.delete(train)
  end
end