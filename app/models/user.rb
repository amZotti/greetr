class User < ActiveRecord::Base
  has_many :received_greetings,
    class_name: "Greeting",
    foreign_key: :recipient_id

  has_many :sent_greetings,
  class_name: "Greeting", 
  foreign_key: :sender_id

  def to_s
    self.email
  end
end
