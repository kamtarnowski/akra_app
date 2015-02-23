# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all

books = ['5b638d1fa267aad88b08689c4c0e8de3.jpg',
    '158_127959552.jpg',
    '128677_1267885132_da32_p.jpeg',
    '540138i_3.jpg',
    'Aldona-Zaorska-Sasiedzi-Najbardziej-okrutni-oprawcy-polskich-patriotow-okladka.jpg',
    'audiobookwsnnmb_przod.jpg',
    'Bog-marnotrawny-Timothy-Keller.jpg',
    'c3da9eb1dece3c84cc1a68f4dff0c3a4.jpg',
    'czerwony-golem-okladka.jpg',
    'dfc172c7556049445176e891ca8bc697.JPG',
    'img_8161.png',
    'lana-del-rey-born-to-die-reedycja-cover.jpg',
    'moj-tato-szczesciarz_okladka-do-druku-1.jpg',
    'okladka474-600x600.jpg',
    'okladka475-600x600.jpg',
    'okladka652-600x600.jpg',
    'Okładka-książki-Marceli-Chmielowskiej.jpg',
    'Przeznaczeni-by-krolowac-Joseph-Prince.jpg',
    'R.-Kelly-Black-Panties.jpg',
    'wyłącz.png']

states = [ 'brak', 'przeczytana', 'do przeczytania', 'nie interesuje mnie' ]

201.times do
  Book.create(cover: File.open("#{Rails.root}/public/books/#{books.sample}"), title: Faker::Name.title, author: Faker::App.author, state: states.sample)


end