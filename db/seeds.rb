Manga.destroy_all
Writer.destroy_all

isayama = Writer.create(first_name: "Hajime", last_name: "Isayama")
isayama.mangas.create(title: "Attack on Titan", genre: "shounen")
