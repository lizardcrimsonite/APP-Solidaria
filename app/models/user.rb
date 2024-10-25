class User < ApplicationRecord
    enum role: { needer: 0, helper: 1 }
    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
    has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"  
    # Validaciones y relaciones 
  end
  