beatles = [
  {
    name: nil, # John Lennon
    nickname: "The Smart One"
  },
  {
    name: nil, # Ringo Starr
    nickname: "The Shy One"
  },
  {
    name: nil, # Paul McCartney
    nickname: "The Cute One"
    },
  {
    name: nil, # George Harrison
    nickname: "The Quiet One"
  }
]

beatles.each do |member|
  case member[:nickname]
  when "The Smart One"
    member[:name] = "John"
  when "The Shy One"
    member[:name] = "Ringo"
  when "The Cute One"
    member[:name] = "Paul"
  else
    member[:name] = "George"
  end
end

beatles.each do |member|
  puts "Hi, I'm #{member[:name]}.  I'm #{member[:nickname]}!"
end
