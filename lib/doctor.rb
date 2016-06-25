class Doctor 
  attr_accessor :name
  def initialize(name)
    @name = name 
    @appointments = []
  end 

  def appointments
    @appointments
  end

  def add_appointment(appointment_object)
    @appointments << appointment_object
    appointment_object.doctor = self
  end 

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end