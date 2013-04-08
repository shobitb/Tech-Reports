# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_techreport_session',
  :secret      => 'e3e5378c1d726c48b01332c5e80b953e7b0d9b74423734c516878aa8d5c4d8e34065fb13ee01af17cf9818dfaf9168f9e3a92d51e257e6e5295013c850adecfb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
