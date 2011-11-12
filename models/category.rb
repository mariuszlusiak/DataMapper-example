class Category
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :categorizations
  has n, :posts, :through => :categorizations
end
