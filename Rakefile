# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'pit'
require 'motion-pixate'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'MotionPixateBootstrapSample'
  
  # Pixate Configuration
  config = Pit.get(
    'pixate_beta',
    :require => {
      'user'      => 'username in Pixate',
      'key'       => 'keycode in Pixate',
      'framework' => 'Pixate framework path'
    }
  )
  app.pixate.user      = config['user']
  app.pixate.key       = config['key']
  app.pixate.framework = File.expand_path(config['framework'])
end
