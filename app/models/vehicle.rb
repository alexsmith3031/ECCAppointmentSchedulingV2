class Vehicle < ApplicationRecord
  belongs_to :customer

  validates :make, :model, presence: true

  validates :model, length: {minimum: 2, maximum: 20}, :allow_blank => true

  validates :make, length: {minimum: 2, maximum: 20}, :allow_blank => true


  validates_format_of :make, :with => /\A[a-z]+\z/i,
                      :allow_blank => true, message: (' cannot include numeric digits or special characters.')

  validates_format_of :model, :with => /\A[a-zA-Z0-9 ]+\z/,
                      :allow_blank => true, message: (' cannot include special characters.')

  validates :year, presence: true


  validates :year, length: {minimum: 4, maximum: 4}, :allow_blank => true


  #validates_numericality_of :year, message: ('Can only be numeric digits')
end
