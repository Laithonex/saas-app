# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::base.smtp_settings = {
    :address => 'stmp.sendgrid.net',
    :port => '587',
    :authentication => :plain, 
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'], 
    :domain => 'heroku.com', 
    :enable_starttls_auto => true
}