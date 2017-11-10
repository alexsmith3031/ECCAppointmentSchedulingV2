class Appointment < ApplicationRecord
  belongs_to :customer
 validates_uniqueness_of :customer_id, scope: [:appDate]
 validates :appointmentDate, confirmation: true

  def start_time
    self.appDate ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

  def appointmentDate

    if appDate.present? && appDate <= Date.current
      errors.add(:date, "cannot be booked before the current date")
    end
  end

end

