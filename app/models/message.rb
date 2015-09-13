class Message
  include ActiveModel::Model
  attr_accessor :username
  attr_accessor :body

  validates :body, :username, :presence => true

  #store_accessor :data, :favorite_color, :time_zone
end
