require File.expand_path('setup.rb', File.dirname(__FILE__))

Setup.new.setup do
  DataMapper.setup(:default, { adapter: 'mongo', database: 'test_db' })
end
