class Doctor

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    @appointments << appointment_instance
    appointment_instance.doctor = self
  end

  def patients
    @appointments.collect { |app| app.patient }
  end
end
