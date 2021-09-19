require 'ffaker'

Blog.destroy_all

10.times do |index|
    title   =  FFaker::Name.name
    body    = FFaker::FreedomIpsum.sentence
    puts title, body
    Blog.create!({
        title: title,
        body: body
    })
end

10.times do |blog|
  Blog.create!(
      title: FFaker::Name.name,
      body: FFaker::FreedomIpsum.sentence
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill} #{FFaker::Name.name}",
    percent_utilized: Random.rand(0..100)
  )
end
  
  puts "5 skills created"
  
  9.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: FFaker::Name.name,
      body: FFaker::FreedomIpsum.sentence,
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
  end
  
  puts "9 portfolio items created"