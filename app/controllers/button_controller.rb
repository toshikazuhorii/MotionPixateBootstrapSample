class ButtonController < UIViewController
  BUTTON_CLASS_NAMES = [
    'btn',
    'btn btn-primary',
    'btn btn-info',
    'btn btn-success',
    'btn btn-warning',
    'btn btn-danger',
    'btn btn-inverse',
    'btn btn-link',
  ]
  
  def initWithNibName(name, bundle: bundle)
    super
    
    self.tabBarItem = UITabBarItem.alloc.initWithTitle(
      'Button',
      image: nil,
      tag: 0
    )
    
    self
  end
  
  def viewDidLoad
    self
    
    BUTTON_CLASS_NAMES.each_with_index do |button_class_name, index|
      button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      button.setTitle(button_class_name, forState: UIControlStateNormal)
      button.sizeToFit
      button.frame = CGRect.new([50, 10 + 50 * index], button.frame.size)
      button.styleClass = button_class_name
      self.view.addSubview(button)
    end
  end
end
