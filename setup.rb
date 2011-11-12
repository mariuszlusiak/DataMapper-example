require 'data_mapper'

class Setup
  def setup(models = nil)
    models ||= find_models
    DataMapper::Logger.new($stdout, :debug)
    yield if block_given?
    models.each { |model| require model }
    DataMapper.finalize
    require 'dm-migrations'
    DataMapper.auto_migrate!
  end

  private

  def find_models
    app_root = File.expand_path('..', __FILE__)
    Dir[File.join(app_root, 'models', '**', '*.rb')].each do |file|
      require file
    end
  end
end

