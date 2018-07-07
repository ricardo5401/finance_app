class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :person_id
      t.integer :user_id
      t.decimal :amount, :precision => 8, :scale => 2, default: 0
      t.string :description

      t.timestamps
    end
  end
end
