class Writer < ApplicationRecord
    has_many :mangas

    def name
        return "#{first_name} #{last_name}"
    end

    def self.find_by_name(first_name, last_name)
        return Writer.find_by(first_name: first_name, last_name: last_name)
    end
end
