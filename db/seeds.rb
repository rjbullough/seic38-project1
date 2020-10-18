User.destroy_all
u1 = User.create name: "Rebecca", email: "Bec@foodlab.com", gender: "Female", height: 177, weight: 80, activity_level: "Sedentry", goal: "Lose", target_intake: 1900
u2 = User.create name: "Pauly", email: "Pauly69@foodlab.com", gender: "Male", height: 167, weight: 90, activity_level: "Active", goal: "Lose", target_intake: 2200
puts "#{User.count} Users created"

Entry.destroy_all
e1 = Entry.create date: 2020-10-14
e2 = Entry.create date: 2020-10-13
e3 = Entry.create date: 2020-10-15
e4 = Entry.create date: 2020-10-13
puts "#{Entry.count} Entries created"

Item.destroy_all
i1 = Item.create name: "Big Mac", protein: 55, carb: 60, fat: 55, energy: 900
i2 = Item.create name: "Dub Quarter Pounder", protein: 70, carb: 50, fat: 65, energy: 1200
i3 = Item.create name: "Banana", protein: 2, carb: 30, fat: 2, energy: 120
i4 = Item.create name: "Apple Pie", protein: 12, carb: 80, fat: 32, energy: 700
i5 = Item.create name: "Sushi", protein: 42, carb: 80, fat: 42, energy: 1600
i6 = Item.create name: "Kebab", protein: 62, carb: 70, fat: 62, energy: 1500
puts "#{Item.count} Items created"

puts "Users and Entries"
u1.entries << e1 << e2
u2.entries << e3 << e4

puts "Entries and Items"
e1.items << i1 << i2
e2.items << i3
e3.items << i4
e4.items << i5 << i6