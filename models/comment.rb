class Comment
  include DataMapper::Resource

  property :id, Serial
  property :posted_by, String
  property :email, String
  property :url, String
  property :body, String

  belongs_to :post
end
