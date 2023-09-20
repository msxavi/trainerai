class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.date :course_start_date
      t.integer :units_of_competency
      t.string :progress_rating

      t.timestamps
    end
  end
end
