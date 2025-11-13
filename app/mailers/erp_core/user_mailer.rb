# engines/erp_core/app/mailers/erp_core/user_mailer.rb
class ErpCore::UserMailer < Devise::Mailer
  helper :application # si necesitas helpers del host
  include Devise::Controllers::UrlHelpers
  default template_path: "erp_core/user_mailer" # for devise mailer within engine

  private

  def default_url_options
    { host: "localhost", port: 3000 } # ajusta según tu entorno
  end
end
