# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_phat_session',
  :secret      => '28ecae64ca86d04a2c4c046a00b943348f1c4fb2be679653e978131fbe117f9d06b5478d57ea4aa7a99d6cd39396bda9ec642b4efc92a7dfd23f192490680fbd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
