require 'active_support'

puts 'Cleaning DB...'

User.destroy_all
Photo.destroy_all

puts 'Creating Users...'

u1 = User.create!(username: "aetv", password: "allyouneedislove")
u2 = User.create!(username: "jmolinier", password: "allyouneedislove")
u3 = User.create!(username: "fburguiere", password: "allyouneedislove")

puts 'Creating Photos...'

for i in 1..1359
  photo = Photo.new
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
  photo.attach(File.open("../app/assets/images/photos/AVmrg#{num}.JPG"))
end

puts 'Finished !'
