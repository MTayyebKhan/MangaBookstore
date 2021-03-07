MangasGenre.destroy_all
Genre.destroy_all
Manga.destroy_all
Writer.destroy_all

isayama = Writer.create(first_name: "Hajime", last_name: "Isayama")


shounen = Genre.create(name: "Shounen")
action = Genre.create(name: "Action")

isayama.mangas.create(title: "Attack on Titan", genres: [shounen])
