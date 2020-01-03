# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Nikola")
User.create(username: "Bruno")

Note.create(title: 'Project', content: 'When you finish this project you will need to start new one!', user_id: 1)
Note.create(title: 'Walk', content: 'Walk only if you going to park', user_id: 2)
Note.create(title: 'Resume', content: 'Dont forget to do you resume', user_id: 1)

Tag.create(name: 'Ruby')
Tag.create(name: 'School')
Tag.create(name: 'Doglife')
Tag.create(name: 'Job')
Tag.create(name: 'Easylife')

TagNote.create(note_id: 1, tag_id: 1)
TagNote.create(note_id: 1, tag_id: 2)
TagNote.create(note_id: 1, tag_id: 5)
TagNote.create(note_id: 2, tag_id: 3)
TagNote.create(note_id: 2, tag_id: 5)
TagNote.create(note_id: 3, tag_id: 2)
TagNote.create(note_id: 3, tag_id: 4)
