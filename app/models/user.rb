class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :received_messages, foreign_key: :receiver_id, class_name: "Secret"
  has_many :sent_messages, foreign_key: :sender_id, class_name: "Secret"
  # has_many :, foreign_key: :sender_id
  # has_many :secrets, foreign_key: :receiver_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
