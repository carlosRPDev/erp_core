require "devise"
require "view_component/engine"

module ErpCore
  class Engine < ::Rails::Engine
    isolate_namespace ErpCore

    initializer "erp_core.assets" do |app|
      config.assets.paths << Rails.root.join("app/assets/builds")

      ActiveSupport.on_load(:action_controller_base) do
        append_view_path Rails.root.join("app", "views")
      end
    end

    # Asegura que Rails cargue correctamente los componentes
    config.autoload_paths << root.join("app/components")

    # Configuración de generators
    config.generators do |g|
      g.template_engine :slim
      g.test_framework  :test_unit, fixture: false
      g.view_component true
    end
  end
end
