class Message
  include ActiveAttr::Model

  attribute :name
  attribute :phone
  attribute :email
  attribute :comments

  validates_presence_of :name
  validates_presence_of :phone
  validates_format_of :phone, :with => /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  validates_presence_of :email
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates_length_of :comments, :maximum => 1000
end
