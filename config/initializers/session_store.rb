# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_views_examples_session',
  :secret      => '00946e2c9e1a9af238c226cfae3851d3b983ed2826d0366fb11129c0170330d48757810e3b8b478c9000960a0cea9514cf05f999a71c6a160ec8999b4606d6a8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
