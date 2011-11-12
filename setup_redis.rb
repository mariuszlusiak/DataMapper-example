require File.expand_path('setup.rb', File.dirname(__FILE__))

Setup.new.setup do
  require 'dm-redis-adapter'
  DataMapper.setup(:default, { adapter: 'redis' })
end
