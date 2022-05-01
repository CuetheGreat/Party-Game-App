class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :category, null: false, foreign_key: true
      t.string :action
      t.integer :intensity

      t.timestamps
    end
  end
end
