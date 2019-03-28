Comment.create!(title:  "お別れの歌",
             song: "お別れの歌",
             singer:"Never Young Beach ",
             story: "最後に会って別れようと、",
             when: "社会人２年目")

99.times do
  Comment.create!(
  title:Faker::Games::Pokemon.name,
  song:Faker::Music.album,
  singer:Faker::Music.band,
  story:Faker::Quote.famous_last_words,
  when:Faker::Time.between(DateTime.now - 1, DateTime.now))
end
