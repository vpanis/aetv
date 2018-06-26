require 'active_support'

puts 'Cleaning DB...'

User.destroy_all
Photo.destroy_all

puts 'Creating Users...'

u1 = User.create!(email: "aetv@changethisemail.com", username: "aetv", password: "allyouneedislove")
u2 = User.create!(email: "jmolinier@changethisemail.com", username: "jmolinier", password: "allyouneedislove")
u3 = User.create!(email: "fburguiere@changethisemail.com", username: "fburguiere", password: "allyouneedislove")

puts 'Creating Photos...'

for i in 1..1359
  photo = Photo.create!
  num = 0
  if i.digits.count == 1
    num="000#{i}"
  elsif i.digits.count == 2
    num="00#{i}"
  elsif i.digits.count == 3
    num="0#{i}"
  else
    num="#{i}"
  end
  photo.image.attach(io: File.open("app/assets/images/photos/AVmrg#{num}.JPG"), filename: "AVmrg#{num}.JPG")
end

puts 'Finished !'
