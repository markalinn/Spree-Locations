class Location < ActiveRecord::Base
  validates_presence_of :name, :address_1, :city, :state
  
  acts_as_gmappable

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address_1}, #{self.city}, #{self.state} #{self.postal_code}, #{self.country}" 
  end
end
