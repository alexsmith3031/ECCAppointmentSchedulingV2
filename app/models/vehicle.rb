class Vehicle < ApplicationRecord
  belongs_to :customer

  validates :make, :model, presence: true,
            length: {minimum: 5, maximum: 20}


  validates_format_of :make, :model, :with => /\A[a-z]+\z/i, message: (' cannot include numeric digits')


  validates :year, presence: true,
            length: {minimum: 4, maximum: 4}


  validates_numericality_of :year, message: ('Can only be numeric digits')
end
