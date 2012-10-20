module Spree
  class LocationsController < Spree::BaseController
    def index
      @json = Location.all(:order => 'name', :conditions => ['longitude is not null']).to_gmaps4rails
      @online_locations = Location.all(:order => 'name', :conditions => ['longitude is null'])
    end
  end
end
