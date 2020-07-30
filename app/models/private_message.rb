class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :join_table_message_users
  has_many :senders, through: :join_table_message_users
  has_many :recipients, through: :join_table_message_users
end
