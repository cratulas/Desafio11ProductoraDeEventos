class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    validates :name, :number_of_members, :debut_date, :status, presence: true
    enum status: ["Men", "Woman", "Band"]

    def to_s
        name
    end
end
