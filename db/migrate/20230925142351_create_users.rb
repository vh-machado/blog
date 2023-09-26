class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :nickname
      t.string :password
      t.boolean :is_admin, default: false
      t.boolean :is_logged_in, default: true

      t.timestamps
    end
  end
end
