class User < ApplicationRecord

  has_secure_password

  #validates :employee_name, :presence => true

  #validates_format_of :employee_name, :with => /\A[a-z]+\z/i,
                      #message: (' cannot include numeric digits or special characters'),
                      #:allow_blank => true

end
