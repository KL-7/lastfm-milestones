require 'scrobbler'

lastfm_info = YAML.load_file(Rails.root.join('config', 'lastfm.yml').to_s)

Scrobbler::Base.api_key = lastfm_info['api_key']
Scrobbler::Base.secret = lastfm_info['secret']