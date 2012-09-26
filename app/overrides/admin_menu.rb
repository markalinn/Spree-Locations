Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "location_tab", 
                     :insert_bottom => "[data-hook='admin_tabs']", 
                     :partial => "spree/admin/shared/locations_tab")

