module Spree
  class LocationsController < Spree::BaseController
    def index
      @json = Location.all(:order => 'name').to_gmaps4rails
    end
  end
end
