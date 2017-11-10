class Appointment < ApplicationRecord
  belongs_to :customer

  validates_uniqueness_of :appDate, scope: [:appDate], message:('is already booked. Please choose a different time')
  validates :appointmentDate, confirmation: true

  validates :description, presence: true

  def start_time
    self.appDate ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

  def appointmentDate

    if appDate.present? && appDate <= Date.current
      errors.add(:Date, "cannot be set before the current date")
    end
    end
  end




