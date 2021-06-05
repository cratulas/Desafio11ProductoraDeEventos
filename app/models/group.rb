class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    validates :name, :number_of_members, :debut_date, :status, presence: true
    enum status: ["Men", "Woman", "Band"]

    def to_s
        name
    end

    def concerts_counts
        concerts.count
    end

    def how_many_concerts
        cont = 0
        array = [1,2,3,4,5,6,7,8,9,10,11,12]
        t = Time.new.year
        a = Time.new
        current_month = a.month

        b = concerts
        i = 0
        while i < b.count
            if b[i].date.year == t
                array.each do |month|
                    if b[i].date.month == month
                        cont = cont + 1
                    end
                end
            end
            i = i + 1
        end

        cont
    end

    def last_concert
        b = concerts
        
        
    end

    def maximum_attendees
        b = concerts
        a = []
        b.each do |attendes|
            a.push(attendes.number_of_attendees)
        end

        a.max
    
    end
    
    def longer_duration
        b = concerts
        i = 0
        array = []
        total = 0
        hour = 0
        minutes = 0
        while i < b.count
            hour = b[i].duration.hour
            minutes = b[i].duration.min
            total = hour*60 + minutes
            array.push(total)
            i = i + 1
        end
        array.max
    end    


end
