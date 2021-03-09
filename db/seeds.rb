MangasGenre.destroy_all
Genre.destroy_all
Manga.destroy_all
Writer.destroy_all

isayama = Writer.create(first_name: "Hajime", last_name: "Isayama")
arakawa = Writer.create(first_name: "Hiromu", last_name: "Arakawa")
shikura = Writer.create(first_name: "Chiyomaru", last_name: "Shikura")
togashi = Writer.create(first_name: "Yoshihiro", last_name: "Togashi")
oda = Writer.create(first_name: "Eiichiro", last_name: "Oda")
miura = Writer.create(first_name: "Kentaro", last_name: "Miura")


action = Genre.create(name: "Action")
adventure = Genre.create(name: "Adventure")
comedy = Genre.create(name: "Comedy")
demons = Genre.create(name: "Demons")
drama = Genre.create(name: "Drama")
harem = Genre.create(name: "Harem")
mecha = Genre.create(name: "Mecha")
seinan = Genre.create(name: "Seinan")
shounen = Genre.create(name: "Shounen")
sol = Genre.create(name: "Slice of Life")


isayama.mangas.create(title: "Attack on Titan", genres: [shounen])
arakawa.mangas.create(title: "Fullmetal Alchemist", genres: [adventure, action])
shikura.mangas.create(title: "Steins;Gate", genres: [adventure])
togashi.mangas.create(title: "Hunter X Hunter", genres: [shounen, adventure])
oda.mangas.create(title: "One Piece", genres: [shounen, action, adventure])
miura.mangas.create(title: "Berserk", genres: [sol, demons])