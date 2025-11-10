module ErpCore
  class User < ApplicationRecord
    self.table_name = "erp_core_users"

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  end
end
