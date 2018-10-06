class User < ApplicationRecord
  # after_create :welcome_email

  has_secure_password
  enum role: [:user, :pro, :admin]

  has_one :survey_answer
  has_many :orders

  validates :email,           presence: true, uniqueness: true
  # validates :strava_id,       presence: true, uniqueness: true
  # validates :facebook_id,     presence: true, uniqueness: true
  # validates :google_id,       presence: true, uniqueness: true
  validates :first_name,      presence: true
  validates :last_name,       presence: true
  validates :address1,        presence: true
  validates :city,            presence: true
  validates :state,           presence: true
  validates :zipcode,         presence: true
  validates :phone_number,    presence: true
  validates :password_digest, presence: true



  def self.strava_oauth2_call(params_code)
    response = Faraday.post("https://www.strava.com/oauth/token?client_id=#{ENV['STRAVA_ID']}&client_secret=#{ENV['STRAVA_SECRET']}&code=#{params_code}")
    @token = response.body.split(/\W+/)[2]
    oauth_response = Faraday.get("https://www.strava.com/api/v3/athlete?access_token=#{@token}")
    self.update_or_create(JSON.parse(oauth_response.body, symbolize_names: true))
  end


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
