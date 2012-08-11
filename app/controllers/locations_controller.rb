class LocationsController < Spree::BaseController
  def index
    @json = Location.all.to_gmaps4rails
  end
end
