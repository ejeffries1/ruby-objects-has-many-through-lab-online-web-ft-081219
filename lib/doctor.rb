class Doctor
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end
  
  def patients
    appointments.collect do |app|
      app.patient
    end
  end
end