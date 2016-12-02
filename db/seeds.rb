# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coconut = Group.new
coconut.name = "Team Coconut"
coconut.save

pineapple = Group.new
pineapple.name = "Team Pineapple"
pineapple.save

banana = Group.new
banana.name = "Team Banana"
banana.save

peach = Group.new
peach.name = "Team Peach"
peach.save

watermelon = Group.new
watermelon.name = "Team Watermelon"
watermelon.save

admin = User.new
admin.email = "admin@test.com"
admin.password = "test123"
admin.first_name = "IAm"
admin.last_name = "Admin"
admin.gender = "Male"
admin.date_of_birth = "May 20, 2000"
admin.height_in_inches = "67"
admin.weight_in_pounds = "150"
admin.group_id = "4"
admin.add_role "admin"
admin.save

user1 = User.new
user1.email = "user1@test.com"
user1.password = "test123"
user1.first_name = "IAm"
user1.last_name = "User1"
user1.gender = "Male"
user1.date_of_birth = "May 19, 2001"
user1.height_in_inches = "68"
user1.weight_in_pounds = "160"
user1.group_id = "2"
user1.add_role "user"
user1.save

user2 = User.new
user2.email = "user2@test.com"
user2.password = "test123"
user2.first_name = "IAm"
user2.last_name = "User2"
user2.gender = "Male"
user2.date_of_birth = "May 19, 2001"
user2.height_in_inches = "68"
user2.weight_in_pounds = "160"
user2.group_id = "3"
user2.add_role "user"
user2.save
