class AppDelegate < PM::Delegate
  status_bar true, animation: :none

  def on_load(app, options)
    return true if RUBYMOTION_ENV == "test"

    @tab_bar = ProMotion::TabBarController.new(
      HomeScreen.new(nav_bar: true, screen_title: "Home 1"),
      HomeScreen.new(nav_bar: true, screen_title: "Home 2"),
      HomeScreen.new(nav_bar: true, screen_title: "Home 3"),
      HomeScreen.new(nav_bar: true, screen_title: "Home 4"),
    )

    open_menu @tab_bar, left: NavigationScreen
  end

end
