require 'scrobbler'

Scrobbler::Base.api_key = ENV['LASTFM_API_KEY']
Scrobbler::Base.secret = ENV['LASTFM_SECRET']