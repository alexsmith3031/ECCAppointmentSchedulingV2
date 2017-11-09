class Customer < ApplicationRecord
  has_one :vehicle, dependent: :destroy
  has_one :appointment, dependent: :destroy
  has_one :insurance, dependent: :destroy
  accepts_nested_attributes_for :appointment
  accepts_nested_attributes_for :vehicle
  accepts_nested_attributes_for :insurance


end
