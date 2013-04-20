class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.styleClass = 'body'
    
    @tab_controller = UITabBarController.alloc.init
    @window.rootViewController = @tab_controller
    
    @tab_controller.setViewControllers([
      TextController.alloc.initWithNibName(nil, bundle: nil),
      TableController.alloc.initWithNibName(nil, bundle: nil),
      ButtonController.alloc.initWithNibName(nil, bundle: nil),
    ], animated: true)
    
    @window.makeKeyAndVisible
    
    true
  end
end
