class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.text :state
      t.text :task
      t.date :limit_date

      t.timestamps
    end
  end
end
