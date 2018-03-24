class User < ApplicationRecord
  enum role: [:user, :admin]
  has_one :survey_answer

  # after_create :welcome_email

  has_secure_password

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :address1
  validates_presence_of :address2
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zipcode
  validates_presence_of :email
  validates_presence_of :phone_number
  validates_presence_of :password_digest

  def self.find_or_create_by_auth(auth)
    user = User.find_or_create_by(provider: auth['provider'], uid: auth['uid'], password_digest: SecureRandom.hex(15))
    auth['info']['first_name'] ? user.first_name = auth['info']['first_name'] : user.first_name = auth['info']['name'].split(" ").first
    auth['info']['last_name'] ? user.last_name = auth['info']['last_name'] : user.last_name = auth['info']['name'].split(" ").last
    user.email = auth['info']['email']

    user.save
    user
  end

  # def welcome_email
  #   SendEmailJob.perform_later(self)
  # end
end
