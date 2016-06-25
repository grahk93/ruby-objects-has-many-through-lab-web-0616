class Patient 
  attr_accessor :name
  attr_reader :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  # def appointments 
  #   @appointments 
  # end

  def add_appointment(appointment_object)
    @appointments << appointment_object
    appointment_object.patient = self
  end 

  def doctors
    self.appointments.map do |appoinment|
      appointment.doctor 
    end
  end
end

# class Patient
#   attr_accessor :name 
#   attr_reader :appointments

#    def initialize(name)
#       @name=name
#       @appointments=[]
#     end
  
#     def add_appointment(appointment)
#         @appointments<<appointment
#         appointment.patient=self
#     end
 
#     def doctors
#       self.appointments.map {|appointments| appointments.doctor}
#     end
  
#   end
#  