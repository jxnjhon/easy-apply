class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end
