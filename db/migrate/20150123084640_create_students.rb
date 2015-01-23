class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.date :dob
      t.string :current_school
      t.string :current_level
      t.string :country
      t.float :sat_score
      t.references :mentor

      t.timestamps null: false
    end
  end
end
