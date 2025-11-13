# engines/erp_core/spec/factories/users.rb
FactoryBot.define do
  factory :erp_core_user, class: 'ErpCore::User' do
    email { Faker::Internet.email }
    password { "123456" }
    password_confirmation { "123456" }
  end
end
