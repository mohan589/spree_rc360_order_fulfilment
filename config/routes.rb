Spree::Core::Engine.routes.draw do
  # Add your extension routes here
	#namespace :admin do
		get 'admin/orders/pending_orders' => "admin/orders#pending_orders"
		get 'admin/orders/completed_orders' => "admin/orders#completed_orders"
		get 'admin/orders/(:id)/process_shipping' => "admin/orders#process_shipping"

	#end


end

