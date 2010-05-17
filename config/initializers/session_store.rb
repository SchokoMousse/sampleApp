# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sampleApp_session',
  :secret      => 'a700d1f72c494f5a74deddb82552a964179ff32d583301f8bbcfa92bde6209e5691cfd6218935182fb95359290649339cc9d20468a74c5bbe8381eb8bc87c74d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
