# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = HashWithIndifferentAccess.new(YAML.load_file(Rails.root.join('db', 'seeds', 'seeds.yml')))

seed_file[:projects].each { 
	|key|
	project = Project.create({:title => key["title"]})
	key[:todos].each {
	  |key2|
	  todo = project.todos.create(:text => key2["text"], :isCompleted => key2["isCompleted"])
		}
  }
