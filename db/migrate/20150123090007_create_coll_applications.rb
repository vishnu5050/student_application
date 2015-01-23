class CreateCollApplications < ActiveRecord::Migration
  def change
    create_table :coll_applications do |t|
      t.references :college
      t.references :mentor
      t.references :student

      t.timestamps null: false
    end
  end
end
