require "devise"

module ErpCore
  class Engine < ::Rails::Engine
    isolate_namespace ErpCore

    initializer "erp_core.assets" do |app|
      # 🪄 Asegura que el engine vea los builds de la app principal
      config.assets.paths << Rails.root.join("app/assets/builds")

      # 🪄 También incluye los helpers del asset pipeline principal
      ActiveSupport.on_load(:action_controller_base) do
        append_view_path Rails.root.join("app", "views")
      end
    end
  end
end
