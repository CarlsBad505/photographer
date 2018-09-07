if Rails.env.development? || Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:                'smtp.sendgrid.net',
    port:                   587,
    domain:                 'http://ajcanaria.com',
    authentication:         'plain',
    enable_starttls_auto:   true,
    user_name:              ENV['sendgrid_username'],
    password:               ENV['sendgrid_password']
  }
end
