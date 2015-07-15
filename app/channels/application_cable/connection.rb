module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = cookies.signed[:username]
      logger.add_tags 'ActionCable', current_user
    end
  end
end
