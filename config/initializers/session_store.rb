# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pokedex_session',
  :secret      => '56a5c17fa0e5e7cf67d6726100310b996d4fadcc85247b3b7fdc7e26ef8c7948e89351a038fe170880d356c97acf5a90f23de474d8fb64f9dc4879c340ebc8d1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
