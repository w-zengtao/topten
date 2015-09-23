# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Nation.all.each do |nation|
  print nation.id
  puts '-' * 80
   if nation.father != 0
      @f_nation = Nation.find(nation.father)
      nation.parent = @f_nation
      nation.save
   end
end