class CreateAccount < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string 	:username
      t.integer :role_id
      t.string 	:password_digest
    end
  end
end
