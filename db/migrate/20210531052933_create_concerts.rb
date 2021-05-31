class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.integer :number_of_attendees
      t.time :duration
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
