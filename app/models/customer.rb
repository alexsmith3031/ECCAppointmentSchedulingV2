class Customer < ApplicationRecord
  has_one :vehicle, dependent: :destroy
  has_one :appointment, dependent: :destroy
  accepts_nested_attributes_for :appointment
  accepts_nested_attributes_for :vehicle
end
