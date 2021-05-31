class Concert < ApplicationRecord
  belongs_to :group
  
  def to_s
      name
  end
end
