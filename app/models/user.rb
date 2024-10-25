class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum role: { needer: 0, helper: 1 }
    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
    has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"  
    after_initialize :set_default_role, if: :new_record?

    private
  
    def set_default_role
      self.role ||= :regular
    end
end
  