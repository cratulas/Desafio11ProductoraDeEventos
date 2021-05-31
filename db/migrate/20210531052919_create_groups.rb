class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :number_of_members
      t.date :debut_date
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
