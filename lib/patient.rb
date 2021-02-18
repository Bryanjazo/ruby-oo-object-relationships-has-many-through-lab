class Patient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new( date, self, doctor)
    # binding.pry
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
      # binding.pry
    end
  end

  def doctors
    appointments.map do |app|
      app.doctor
    end
  end
end
