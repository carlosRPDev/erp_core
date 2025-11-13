module ErpCore
  module Users
    class RegistrationsController < Devise::RegistrationsController
      layout "erp_core/application"

      respond_to :html, :turbo_stream

      def create
        # Forzamos HTML para que Letter Opener funcione
        request.format = :html

        super
      end

      protected

      # Redirige al login después de registrarse
      def after_sign_up_path_for(resource)
        new_user_session_path
      end

      # Para usuarios confirmables que aún no confirmaron
      def after_inactive_sign_up_path_for(resource)
        new_user_session_path
      end
    end
  end
end
