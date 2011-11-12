## Running

    bundle exec irb -r ./setup_sqlite.rb

    bundle exec irb -r ./setup_redis.rb

    bundlex exec irb -r ./setup_mongo.rb

    Post.create(
      :title      => "My first DataMapper post",
      :body       => "A lot of text ...",
      :created_at => Time.now
    )

    Post.all