class AddColumnPasswordDigest < ActiveRecord::Migration
  def change
    add_column(:users, :password_digest, :string)

    remove_column(:users, :password, :string)
    remove_column(:users, :confirm_password, :string)
  end
end
