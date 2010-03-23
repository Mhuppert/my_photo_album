# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_my_photo_album_session',
  :secret      => 'deca6e4e176a462f91669bfb62981c89a5a65a332fb8cc6053c88ed0f0d9a37c118b3c1b32a18db272c441aad5397f81a3740fea2e8c943ba21b9c8cf0601dec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
