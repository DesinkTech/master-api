# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin_role = Role.create!({ description: "Admin" })
teacher_role = Role.create!({ description: "Teacher" })
secretary_role = Role.create!({ description: "Secretary" })
student_role = Role.create!({ description: "Student" })

User.create!({ email: "email@email.com", password_digest: "kmasdlkmas", name: "Pepega", 
            birth_date: DateTime.current, active: true, role_id: admin_role.id })