class CreateHome < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :surname
      t.string :email, null: false
      t.timestamps
    end
  end
end
