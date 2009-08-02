# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_timetrak_session',
  :secret      => '3f09412b28b9a85f7747886d4ecf9f808ae9ec733223c99fd291f30163bcfdd48abfa7112d55c93bb2a549823470235f909ee9f746fd5406049b1b2c4271ca70'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
