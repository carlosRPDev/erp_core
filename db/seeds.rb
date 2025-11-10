puts "🌱 Seeding ErpCore engine..."

ErpCore::User.find_or_create_by!(email: "admin@erp.com") do |user|
  user.password = "admin123"
  user.password_confirmation = "admin123"
  user.role = "admin" if user.respond_to?(:role)
end

puts "✅ ErpCore seed completado."
