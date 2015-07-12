class Comparison < ActiveRecord::Base
  validates :email, presence: true
  validates :postalcode, presence: true
end
