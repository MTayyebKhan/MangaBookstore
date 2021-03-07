class Writer < ApplicationRecord
    has_many :mangas

    def name
        return "#{first_name} #{last_name}"
    end
end
