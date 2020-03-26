#  class Train
class Train

  attr_reader :name, :type, :wagons, :current_station, :number, :list
  include MadeBy
  include InstanceCounter
  @@list = {}
  RGXP_TRAIN_NUMBER_FORMAT = /^[a-zа-я\d]{3}-?[a-zа-я\d]{2}$/i

  def initialize (name, number, made_by)
    @name = name
    @number = number
    @made_by = made_by
    @wagons = []
    @speed = 0
    validate!
    @@list[number] = self
    register_instance
  end

  def validate!
    raise StandardError, "Неправильный формат номера (#{self.number})" if self.number !~ RGXP_TRAIN_NUMBER_FORMAT
  end

  def valid?
    self.validate!
    true
  rescue
    false
  end

  def self.find(number)
    @@list[number]
  end

  def self.list
    @@list
  end

end

