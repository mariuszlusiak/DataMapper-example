** Running

bundle exec irb -r ./setup_sqlite.rb

bundle exec irb -r ./setup_redis.rb

Post.create(
  :title      => "My first DataMapper post",
  :body       => "A lot of text ...",
  :created_at => Time.now
)