# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SitusSunnah_session',
  :secret      => '615e7368f889044ad44c45efa4e9581d33b063e62af7206096e2b9cd07773fb2f317a93281f29a7fc329c47e83c3c203b49a95a31a68911144596b7631ef50c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
