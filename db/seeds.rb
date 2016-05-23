# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Conference.destroy_all

cancun_con_con = Conference.create({ name: 'Con Con', location: 'Cancun' })

conference_start = 0.days.from_now.at_midnight + 8.hours

talks_data = [
  {
    title: "Abaci",
    speaker_name: "Anila",
    start_offset: 2.hours,
    duration: 0.5.hours
  },
  {
    title: "Branding",
    speaker_name: "Brett",
    start_offset: 3.hours,
    duration: 1.5.hours
  },
  {
    title: "Card Counting",
    speaker_name: "Cynthia",
    start_offset: 4.hours,
    duration: 0.75.hours
  },
  {
    title: "Debugging",
    speaker_name: "Dani",
    start_offset: 5.hours,
    duration: 0.5.hours
  },
  {
    title: "Efficiency",
    speaker_name: "Ezra",
    start_offset: 6.hours,
    duration: 1.5.hours
  },
  {
    title: "Freelancing",
    speaker_name: "Figaro",
    start_offset: 7.hours,
    duration: 0.5.hours
  },
  {
    title: "Go",
    speaker_name: "Geoff",
    start_offset: 2.hours,
    duration: 0.75.hours
  },
  {
    title: "Henna",
    speaker_name: "Hannah",
    start_offset: 1.hours,
    duration: 1.5.hours
  },
  {
    title: "Iteration",
    speaker_name: "Ida",
    start_offset: 0.hours,
    duration: 0.75.hours
  },
  {
    title: "Jaunt",
    speaker_name: "Juan",
    start_offset: 0.5.hours,
    duration: 0.5.hours
  },
  {
    title: "Kingdom",
    speaker_name: "Kurt",
    start_offset: 2.hours,
    duration: 1.hours
  },
  {
    title: "Lunch",
    speaker_name: "Linda",
    start_offset: 4.hours,
    duration: 1.hours
  },
  {
    title: "Marketing",
    speaker_name: "Madge",
    start_offset: 5.hours,
    duration: 0.75.hours
  },
  {
    title: "Natives",
    speaker_name: "Nedhi",
    start_offset: 6.5.hours,
    duration: 1.0.hours
  },
  {
    title: "Opportunities",
    speaker_name: "Opal",
    start_offset: 7.hours,
    duration: 1.hours
  },
  {
    title: "Photobomb",
    speaker_name: "Pheobe",
    start_offset: 6.hours,
    duration: 0.5.hours
  },
  {
    title: "Questing",
    speaker_name: "Quintain",
    start_offset: 7.25.hours,
    duration: 1.hours
  },
  {
    title: "Randomization",
    speaker_name: "Ronaldo",
    start_offset: 4.5.hours,
    duration: 0.5.hours
  },
  {
    title: "Streamline",
    speaker_name: "Sam",
    start_offset: 3.75.hours,
    duration: 1.hours
  },
  {
    title: "Turnover",
    speaker_name: "Trey",
    start_offset: 1.5.hours,
    duration: 1.hours
  },
  {
    title: "Unanimity",
    speaker_name: "Ugo",
    start_offset: 4.75.hours,
    duration: 0.75.hours
  },
  {
    title: "Veritibility",
    speaker_name: "Van",
    start_offset: 6.75.hours,
    duration: 0.75.hours
  },
  {
    title: "War",
    speaker_name: "Warren",
    start_offset: 2.5.hours,
    duration: 0.75.hours
  },
  {
    title: "Xenogenesis",
    speaker_name: "Xavier",
    start_offset: 3.5.hours,
    duration: 1.hours
  },
  {
    title: "Youth",
    speaker_name: "Yev",
    start_offset: 1.hours,
    duration: 0.75.hours
  },
  {
    title: "Zero",
    speaker_name: "Zorro",
    start_offset: 2.25.hours,
    duration: 0.5.hours
  }
]

talks_data.each do |talk_data|
  talk = Talk.create({
      title: talk_data[:title],
      speaker_name: talk_data[:speaker_name],
      start_time: conference_start + talk_data[:start_offset],
      end_time: conference_start + talk_data[:start_offset] + talk_data[:duration]
  })
  cancun_con_con.talks << talk
end
