module Spree
  module Admin
    class LocationsController < ResourceController
      
      protected
      
      def location_after_save
        admin_locations_url
      end
      
    end
  end
end
