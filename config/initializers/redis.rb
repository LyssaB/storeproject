if (Rails.env == "production")
  $redis = Redis.new(url: ENV["REDIS_URL"])
else
  $redis= Redis.new(:url => "redis://lyssab:073b895d46d9b83fdd655f56e16a1eeb@50.30.35.9:3634/")
end

