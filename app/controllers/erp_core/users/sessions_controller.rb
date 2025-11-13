module ErpCore
  module Users
    class SessionsController < Devise::SessionsController
      layout "erp_core/application"  # Tu layout con csrf_meta_tags

      protected

      # Redirige al dashboard de erp_user después del login
      def after_sign_in_path_for(resource)
        ErpUsers::Engine.routes.url_helpers.admin_dashboard_path(only_path: true)
      end
    end
  end
end
