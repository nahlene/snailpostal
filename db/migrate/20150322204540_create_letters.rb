class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.belongs_to :user, index: true
      t.string :content
      t.datetime :dispatch_time

      t.timestamps
    end
    add_foreign_key :letters, :users
  end
end