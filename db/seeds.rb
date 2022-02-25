puts "Creating roles..."
Role.create(character_name: "Fluffy")
Role.create(character_name: "Shiela")
Role.create(character_name: "The Count")
Role.create(character_name: "Chucky")

puts "Creating auditions..."
Audition.create(actor: "Isaac Walters", location: "Philadelphia", phone: 1234567890, hired: false, role_id: 2)
Audition.create(actor: "Anna Reed", location: "New York City", phone: 9087654321, hired: true, role_id: 4)
Audition.create(actor: "Tom Rider", location: "Chicago", phone: 9083647321, hired: true, role_id: 1)
Audition.create(actor: "Paulina Harvey", location: "Atlanta", phone: 2347657321, hired: true, role_id: 3)

puts "Seeding done!"