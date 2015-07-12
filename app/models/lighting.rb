class Lighting < ActiveRecord::Base
	validates :bulb_id, presence: true
  	validates :quantity, presence: true
   	validates :hoursday, presence: true
end
