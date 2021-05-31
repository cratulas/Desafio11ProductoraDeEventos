class Group < ApplicationRecord
    has_many :concerts
    enum status: ["Men", "Woman", "Band"]

    def to_s
        name
    end
end
