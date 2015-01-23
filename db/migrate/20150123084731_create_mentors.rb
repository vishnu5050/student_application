class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.date :dob
      t.text :bio
      t.string :country

      t.timestamps null: false
    end
  end
end
