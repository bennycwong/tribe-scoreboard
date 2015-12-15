# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
types_list = [
  [ "Time", 1 ],
  [ "Relationships", 1 ],
  [ "Income", 1 ],
  [ "Body", 1 ],
  [ "Expansion", 1 ]
]

types_list.each do |name, points|
  Type.find_or_create_by(name: name) do |type|
    type.points = 1
  end
end
