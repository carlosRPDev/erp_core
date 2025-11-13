module ErpCore
  module Users
    class ConfirmationsController < Devise::ConfirmationsController
      layout "erp_core/application"  # Tu layout con csrf_meta_tags

      protected

      # Redirige al login después de confirmar
      def after_confirmation_path_for(resource_name, resource)
        new_session_path(resource_name) # o erp_core.new_user_session_path
      end
    end
  end
end
