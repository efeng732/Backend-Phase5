class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :month
      t.string :category
      t.float :budget
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
