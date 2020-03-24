module InstanceCounter
  

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    

    def instance
      @instance ||= 0
    end

    def instance=(value)
      @instance = value
    end
  end

  module InstanceMethods
    protected

    def register_instance

      self.class.instance ||= 0
      self.class.instance += 1
    end
  end
end