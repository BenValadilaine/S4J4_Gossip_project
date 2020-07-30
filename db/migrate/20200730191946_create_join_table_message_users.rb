class CreateJoinTableMessageUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_message_users do |t|
      t.belongs_to :private_message
      t.belongs_to :sender
      t.belongs_to :recipient
      t.timestamps
    end
  end
end
