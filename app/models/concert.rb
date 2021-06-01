class Concert < ApplicationRecord
  belongs_to :group
  validates :number_of_attendees, presence: true
end
