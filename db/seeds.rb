puts "🌱 Seeding ErpCore engine..."

ErpCore::User.find_or_create_by!(email: "admin@erp.com") do |user|
  user.password = "123456Aa"
  user.password_confirmation = "123456Aa"
end

puts "✅ ErpCore seed completado."
