class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.boolean :available

      t.timestamps null: false
    end
  end
end
