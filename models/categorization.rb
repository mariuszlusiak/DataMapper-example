class Categorization
  include DataMapper::Resource

  property :id, Serial
  property :created_at, DateTime

  belongs_to :category
  belongs_to :post
end
