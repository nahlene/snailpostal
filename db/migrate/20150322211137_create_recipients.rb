class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :email

      t.timestamps null: false
    end
    add_foreign_key :recipients, :letters
  end
end
