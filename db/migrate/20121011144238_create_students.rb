require_relative '../config' 


# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :gender
      t.string :email
      t.string :phone
    # HINT: checkout ActiveRecord::Migration.create_table
    end
  end
end
