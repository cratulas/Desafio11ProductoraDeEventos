json.extract! concert, :id, :number_of_attendees, :duration, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
