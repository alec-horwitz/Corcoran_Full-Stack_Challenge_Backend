# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
header_skiped = false
CSV.foreach('presidents.csv') do |row|
  if header_skiped
    President.create(
      name: row[0],
      birthday: row[1],
      birthplace: row[2],
      deathday: row[3],
      deathplace: row[4]
    )
  else
    header_skiped = true
  end
end
