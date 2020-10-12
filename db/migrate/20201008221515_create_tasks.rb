class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_img
      t.float :task_amount
      t.integer :parent_id
      t.boolean :completed, :default => false
      t.boolean :submitted, :default => false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
