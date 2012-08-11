class SpreeLocationsHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_tabs, 'admin/shared/locations_tab'
end