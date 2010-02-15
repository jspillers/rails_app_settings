# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_settings_session',
  :secret      => '1dae771f6bbe384fa7378a718ed6a549b81946d477fdaaf7f80b24c63fbb9f51f827f281db745c1ed7caf46e11ac015d3e8a996a71bc3fc2e17169383b010aca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
