module My
  class Application < Rails::Application
    config.autoload_paths += %W(
    #{config.root}/app/forms/concerns
      #{config.root}/app/decorators/concerns
    )
  end
end
