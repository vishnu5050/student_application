class CreateCollApplications < ActiveRecord::Migration
  def change
    create_table :coll_applications do |t|
      t.references :student, index: true
      t.references :college, index: true

      t.timestamps null: false
    end
    add_foreign_key :coll_applications, :students
    add_foreign_key :coll_applications, :colleges
  end
end
