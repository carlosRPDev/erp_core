ErpCore::Engine.routes.draw do
  devise_for :users,
             class_name: "ErpCore::User",
             module: :devise,
             path: "",
             path_names: { sign_in: "login", sign_out: "logout" },
             controllers: {
              sessions: "erp_core/users/sessions",
              registrations: "erp_core/users/registrations",
              confirmations: "erp_core/users/confirmations"
              }
end
