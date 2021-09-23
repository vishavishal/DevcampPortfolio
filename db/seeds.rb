require 'ffaker'

Blog.destroy_all
Topic.destroy_all
Skill.destroy_all
Portfolio.destroy_all

3.times do |topic|
  Topic.create({
    title: FFaker::Name.name
  })
end

10.times do |index|
    title   =  FFaker::Name.name
    body    = FFaker::FreedomIpsum.sentence[0..30]
    puts title, body
    Blog.create!({
        title: title,
        body: body,
        topic_id: Topic.last.id
    })
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
      subtitle: 'Angular',
      body: FFaker::FreedomIpsum.sentence,
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
  end

  Portfolio.create!(
      title: "Portfolio title: #{11}",
      subtitle: 'ROR',
      body: FFaker::FreedomIpsum.sentence,
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
  
  puts "9 portfolio items created"