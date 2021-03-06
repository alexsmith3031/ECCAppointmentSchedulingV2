class Customer < ApplicationRecord

  has_one :vehicle, dependent: :destroy
  has_one :appointment, dependent: :destroy
  has_one :insurance, dependent: :destroy
  accepts_nested_attributes_for :appointment
  accepts_nested_attributes_for :vehicle
  accepts_nested_attributes_for :insurance

  validates :email, :firstName, :lastName, presence: true

  validates :phone, :presence => true

  validates_format_of :firstName, :middleInitial, :lastName, :with => /\A[a-z]+\z/i,
  message: (' cannot include numeric digits or special characters'),
  :allow_blank => true

  validates :phone, length: {minimum: 10, maximum: 15,},
            format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/,
            message: (' is not valid')},
            :allow_blank => true

  validates_format_of :email, :with => /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/, :allow_blank => true
    #validates :email, format: /@/

end
