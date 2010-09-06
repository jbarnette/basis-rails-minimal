[%= my.classname %]::Application.configure do
  config.action_controller.perform_caching      = false
  config.action_dispatch.best_standards_support = :builtin
  config.action_mailer.raise_delivery_errors    = false
  config.action_view.debug_rjs                  = true
  config.active_support.deprecation             = :log
  config.consider_all_requests_local            = true
end

