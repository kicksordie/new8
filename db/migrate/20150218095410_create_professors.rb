class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.string :department
      t.references :school, index: true
      t.string :school_name

      t.timestamps null: false
    end
    add_foreign_key :professors, :schools
  end
end
