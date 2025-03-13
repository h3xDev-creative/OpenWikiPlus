Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.active_storage.service = :local
  config.active_job.queue_adapter = :async
  config.assets.compile = false
  config.assets.digest = true
  config.force_ssl = true
end
