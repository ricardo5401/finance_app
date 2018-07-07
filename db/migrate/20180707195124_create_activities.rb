class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :account_id
      t.integer :user_id
      t.string :description
      t.decimal :amount, :precision => 8, :scale => 2, default: 0

      t.timestamps
    end
  end
end
