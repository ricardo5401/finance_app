class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :phone
      t.integer :user_id
      t.string :address
      t.string :email
      t.boolean :own, default: false

      t.timestamps
    end
  end
end
