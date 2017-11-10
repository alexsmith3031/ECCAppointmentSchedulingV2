class Insurance < ApplicationRecord
  belongs_to :customer

  validates_presence_of :companyName, :claimNumber, :unless => :yesno?

end
