require 'data_mapper'

class Setup
  def setup
    DataMapper::Logger.new($stdout, :debug)
    yield if block_given?
    app_root = File.expand_path('..', __FILE__)
    Dir[File.join(app_root, 'models', '**', '*.rb')].each do |file|
      require file
    end
    DataMapper.finalize
    require 'dm-migrations'
    DataMapper.auto_migrate!
  end
end

