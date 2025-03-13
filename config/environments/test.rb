Rails.application.configure do
  config.cache_classes = true
  config.eager_load = false
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
  config.active_storage.service = :test
  config.active_job.queue_adapter = :inline
  config.assets.debug = false
  config.assets.digest = false
end
