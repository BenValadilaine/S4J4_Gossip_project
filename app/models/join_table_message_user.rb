class JoinTableMessageUser < ApplicationRecord
  belongs_to :private_message
  belongs_to :sender
  belongs_to :recipient
end
