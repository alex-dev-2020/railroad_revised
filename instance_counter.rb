module InstanceCounter


  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    # @instances_counter = 0

    def instance
      @instances_counter
    end

    def instance=(value)
      @instances_counter = value
    end
  end

  module InstanceMethods
    protected

    def register_instance
      instance = (self.class.instance.nil?) ? 0 : self.class.instance
      self.class.send :instance=, instance + 1
    end
  end
end


