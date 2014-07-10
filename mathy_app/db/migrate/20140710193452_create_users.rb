class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
    end
  end
end
