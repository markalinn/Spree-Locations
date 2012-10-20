module Spree
  class Location < ActiveRecord::Base
    
    validates_presence_of :name
    
    #Only process geocoding if state exists to accomodate ecommerce listings with only hyperlink
    acts_as_gmappable :process_geocoding => lambda { |obj| !obj.state.blank? && obj.latitude.blank? && obj.longitude.blank? }
    
    attr_accessible :phone_number, :address_1, :address_2, :postal_code, :state, :name, :city, :country, :hyperlink
    
    def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
      "#{self.address_1}, #{self.city}, #{self.state} #{self.postal_code}, #{self.country}" 
    end
  
    def gmaps4rails_title
        # add here whatever text you desire
        "#{self.name}"
    end
      
    def gmaps4rails_infowindow
        # add here whatever html content you desire, it will be displayed when users clicks on the marker
        "<strong>#{self.name}</strong><br/>#{self.address_1}<br/>#{self.city}, #{self.state} #{self.postal_code}<br/><br/>#{self.phone_number}"
    end
    
    def gmaps4rails_sidebar
      "<span>#{name}</span>" #put whatever you want here
    end
  end
end
