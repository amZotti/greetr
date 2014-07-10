class User < ActiveRecord::Base
  def to_s
    self.email
  end
end
