class TableController < UITableViewController
  CELL_REUSE_IDENTIFIER = 'cell'
  
  CELL_CLASS_NAMES = [
    'success',
    'error',
    'warning',
    'info',
  ]
  
  def initWithNibName(name, bundle: bundle)
    super
    
    self.tabBarItem = UITabBarItem.alloc.initWithTitle(
      'Table',
      image: nil,
      tag: 0
    )
    
    self
  end
  
  def viewDidLoad
    self
    
    self.view.styleClass = 'table table-striped'
    
    @data = ('A'..'Z').to_a
  end
  
  def tableView(tableView, numberOfRowsInSection: section)
    @data.size
  end
  
  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELL_REUSE_IDENTIFIER) || begin
      UITableViewCell.alloc.initWithStyle(
        UITableViewCellStyleDefault,
        reuseIdentifier: CELL_REUSE_IDENTIFIER
      )
    end
    cell.styleClass = CELL_CLASS_NAMES[indexPath.row % CELL_CLASS_NAMES.size]
    
    #cell.textLabel.text = @data[indexPath.row]   # not effective
    label = UILabel.alloc.init
    label.text = @data[indexPath.row]
    label.sizeToFit
    cell.addSubview(label)
    
    return cell
  end
end
