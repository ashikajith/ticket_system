class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.integer :parent_task
      t.string :name
      t.text :description
      t.string :status
      t.date :start_date
      t.date :end_date
      t.date :due_date

      t.timestamps
    end
  end
end
