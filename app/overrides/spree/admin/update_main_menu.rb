Deface::Override.new(
	:virtual_path => 'spree/admin/shared/_main_menu',
	:name => 'update_orders',
	:replace => "erb[silent]:contains('if can? :admin, Spree::Order')",
	:closing_selector => "erb[silent]:contains('end')",
	:insert_before => "erb[silent]:contains('if can? :admin, Spree::Product')",
	:text          => '<ul class="nav nav-sidebar">
    <%= main_menu_tree Spree.t(:orders), icon: "shopping-cart", sub_menu: "order", url: "#sidebar-order" %>
  </ul>'
	)
