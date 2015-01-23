class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :country
      t.float :min_sat_score
      t.float :tution_fee


      t.timestamps null: false
    end
  end
end
