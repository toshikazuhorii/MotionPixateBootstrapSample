class TextController < UIViewController
  TEXT_CLASS_NAMES = [
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'lead',
    'small',
    'strong',
    'em',
    'muted',
    'text-warning',
    'text-error',
    'text-info',
    'text-success',
    'text-left',
    'text-center',
    'text-right',
  ]
  
  def initWithNibName(name, bundle: bundle)
    super
    
    self.tabBarItem = UITabBarItem.alloc.initWithTitle(
      'Text',
      image: nil,
      tag: 0
    )
    
    self
  end
  
  def viewDidLoad
    self
    
    @top_view = UIScrollView.alloc.initWithFrame(self.view.bounds)
    @top_view.contentSize = [self.view.frame.size.width, 1000]
    self.view.addSubview(@top_view)
    
    height = 50
    TEXT_CLASS_NAMES.each_with_index do |text_class_name, index|
      text = UILabel.alloc.init
      text.text = text_class_name
      text.sizeToFit
      text.frame = CGRect.new([50, 50 + height * index], [200, height])
      text.styleClass = text_class_name
      @top_view.addSubview(text)
    end
  end
end
