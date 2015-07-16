module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :username

    def connect
      self.username = cookies.signed[:username]
    end
  end
end
