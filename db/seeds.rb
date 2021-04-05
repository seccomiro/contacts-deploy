5.times do
  Kind.create(description: Faker::Job.unique.field)
end

8.times do
  Company.create(name: Faker::Company.unique.name, active: Faker::Boolean.boolean)
end

10.times do
  User.create(
    email: Faker::Internet.unique.email,
    name: Faker::Movies::StarWars.unique.character,
    password: '321321321',
    password_confirmation: '321321321'
  )
end

100.times do
  contact = Contact.create(
    email: Faker::Internet.unique.email,
    name: Faker::Name.unique.name_with_middle,
    remark: Faker::Lorem.paragraph,
    kind: Kind.all.sample,
    company: Company.all.sample
  )

  user_count = (1..10).to_a.sample
  User.all.sample(user_count).each do |user|
    contact.users << user
  end

  (0..5).to_a.sample.times do
    contact.phones.create(number: Faker::PhoneNumber.unique.cell_phone)
  end

  contact.create_address(
    city: Faker::Address.city,
    state: Faker::Address.state,
    street: Faker::Address.street_address
  ) if Faker::Boolean.boolean
end