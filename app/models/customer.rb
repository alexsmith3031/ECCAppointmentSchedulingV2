class Customer < ApplicationRecord
  has_one :vehicle, dependent: :destroy
  has_one :appointment, dependent: :destroy
  has_one :insurance, dependent: :destroy
  accepts_nested_attributes_for :appointment
  accepts_nested_attributes_for :vehicle
  accepts_nested_attributes_for :insurance

  validates :email, :firstName, :lastName, presence: true

  validates :phone, :presence => true,
            length: {minimum: 10, maximum: 15,},
            format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/,
            message: ('number is not valid')}

  validates_format_of :email, :with => /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/
    #validates :email, format: /@/
end
