class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :event,   null:false
      t.date :due_date,  null:false
      t.text :description

      # null :false mean:必填(migrate SQL)
      t.timestamps
    end
  end
end
