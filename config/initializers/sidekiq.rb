require "sidekiq/web"

Sidekiq.configure_server do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

Sidekiq::Web.use Rack::Config do |env|
  env["rack.locale"] = "en"
end
