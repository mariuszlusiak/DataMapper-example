class Post
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :body, Text
  property :created_at, DateTime

  has n, :comments
  has n, :categorizations
  has n, :categories, :through => :categorizations
end
