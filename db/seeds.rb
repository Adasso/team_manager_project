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

rocket = Group.new
rocket.name = "Team Rocket"
rocket.save

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

user3 = User.new
user3.email = "user3@test.com"
user3.password = "test122"
user3.first_name = "IAm"
user3.last_name = "User3"
user3.gender = "Male"
user3.date_of_birth = "May 19, 2001"
user3.height_in_inches = "68"
user3.weight_in_pounds = "160"
user3.group_id = "3"
user3.add_role "user"
user3.save


user4 = User.new
user4.email = "user4@test.com"
user4.password = "test122t"
user4.first_name = "IAm"
user4.last_name = "User4"
user4.gender = "Male"
user4.date_of_birth = "May 19, 2001"
user4.height_in_inches = "68"
user4.weight_in_pounds = "160"
user4.group_id = "2"
user4.add_role "user"
user4.save



user5 = User.new
user5.email = "user5@test.com"
user5.password = "test125"
user5.first_name = "IAm"
user5.last_name = "User5"
user5.gender = "Male"
user5.date_of_birth = "May 19, 2001"
user5.height_in_inches = "68"
user5.weight_in_pounds = "160"
user5.group_id = "4"
user5.add_role "user"
user5.save


user6 = User.new
user6.email = "user6@test.com"
user6.password = "test126"
user6.first_name = "IAm"
user6.last_name = "User6"
user6.gender = "Male"
user6.date_of_birth = "May 19, 2001"
user6.height_in_inches = "68"
user6.weight_in_pounds = "160"
user6.group_id = "1"
user6.add_role "user"
user6.save



user7 = User.new
user7.email = "user7@test.com"
user7.password = "test127"
user7.first_name = "IAm"
user7.last_name = "User7"
user7.gender = "Male"
user7.date_of_birth = "May 19, 2001"
user7.height_in_inches = "68"
user7.weight_in_pounds = "160"
user7.group_id = "1"
user7.add_role "user"
user7.save



user8 = User.new
user8.email = "user8@test.com"
user8.password = "test128"
user8.first_name = "IAm"
user8.last_name = "User8"
user8.gender = "Male"
user8.date_of_birth = "May 19, 2001"
user8.height_in_inches = "68"
user8.weight_in_pounds = "160"
user8.group_id = "5"
user8.add_role "user"
user8.phone_number="5059087361"
user8.save


user9 = User.new
user9.email = "user9@test.com"
user9.password = "test129"
user9.first_name = "IAm"
user9.last_name = "User9"
user9.gender = "Female"
user9.date_of_birth = "May 29, 2001"
user9.height_in_inches = "98"
user9.weight_in_pounds = "150"
user9.group_id = "5"
user9.add_role "user"
user9.phone_number="5059087361"
user9.save

user10 = User.new
user10.email = "user10@test.com"
user10.password = "test123"
user10.first_name = "IAm"
user10.last_name = "User10"
user10.gender = "Female"
user10.date_of_birth = "May 29, 2001"
user10.height_in_inches = "98"
user10.weight_in_pounds = "150"
user10.group_id = "6"
user10.add_role "user"
user10.phone_number="5059087361"
user10.save

user11 = User.new
user11.email = "user11@test.com"
user11.password = "test123"
user11.first_name = "IAm"
user11.last_name = "User11"
user11.gender = "Female"
user11.date_of_birth = "May 29, 2001"
user11.height_in_inches = "98"
user11.weight_in_pounds = "150"
user11.group_id = "6"
user11.add_role "user"
user11.phone_number="2022514094"
user11.save

user12 = User.new
user12.email = "user12@test.com"
user12.password = "test123"
user12.first_name = "IAm"
user12.last_name = "User12"
user12.gender = "Female"
user12.date_of_birth = "May 29, 2001"
user12.height_in_inches = "98"
user12.weight_in_pounds = "150"
user12.group_id = "6"
user12.add_role "user"
user12.phone_number="5053184090"
user12.save

user13 = User.new
user13.email = "user13@test.com"
user13.password = "test123"
user13.first_name = "IAm"
user13.last_name = "User13"
user13.gender = "Female"
user13.date_of_birth = "May 29, 2001"
user13.height_in_inches = "98"
user13.weight_in_pounds = "150"
user13.group_id = "6"
user13.add_role "user"
user13.phone_number="5052897651"
user13.save

user14 = User.new
user14.email = "user14@test.com"
user14.password = "test123"
user14.first_name = "IAm"
user14.last_name = "User14"
user14.gender = "Female"
user14.date_of_birth = "May 29, 2001"
user14.height_in_inches = "98"
user14.weight_in_pounds = "150"
user14.group_id = "6"
user14.add_role "user"
user14.phone_number="5052391479"
user14.save

user15 = User.new
user15.email = "user15@test.com"
user15.password = "test123"
user15.first_name = "IAm"
user15.last_name = "User15"
user15.gender = "Female"
user15.date_of_birth = "May 29, 2001"
user15.height_in_inches = "98"
user15.weight_in_pounds = "150"
user15.group_id = "6"
user15.add_role "user"
user15.phone_number=" 5052369592"
user15.save
