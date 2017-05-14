class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Hash stores the current data, and StoredHash stores the data from last snapshot.
  $Hash = {}
  $StoredHash = {}
end
