class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  has_many :join_table_message_users
  has_many :private_messages, through: :join_table_message_users
end
