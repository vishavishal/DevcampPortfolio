require 'ffaker'

Blog.destroy_all

10.times do |index|
    title = FFaker::Name.name
    body= FFaker::FreedomIpsum.sentence
    puts title, body
    Blog.create!({
        title: title,
        body: body
    })
end