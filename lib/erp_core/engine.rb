require "devise"

module ErpCore
  class Engine < ::Rails::Engine
    isolate_namespace ErpCore
  end
end
