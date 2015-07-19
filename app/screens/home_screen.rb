class HomeScreen < PM::Screen
  attr_accessor :screen_title
  tab_bar_item title: "Home", item: "icon_email"

  def on_load
    set_nav_bar_button :left, title: "Menu", action: :open_menu
    self.title = screen_title
  end

  def open_menu
    app_delegate.menu.show(:left)
  end

end
