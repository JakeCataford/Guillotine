module Guillotine
  class Engine < ::Rails::Engine
    isolate_namespace Guillotine
    config.autoload_paths << File.expand_path("../app/guillotine", __FILE__)
  end
end
