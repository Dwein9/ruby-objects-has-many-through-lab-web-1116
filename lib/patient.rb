class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment_instance)
    @appointments << appointment_instance
    appointment_instance.patient = self
  end

  def doctors
    @appointments.collect { |app| app.doctor  }
  end

end
