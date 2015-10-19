class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :user_name, :string
      t.column :email, :string
      t.column :password, :string
      t.column :confirm_password, :string

      t.timestamps
    end
  end
end
