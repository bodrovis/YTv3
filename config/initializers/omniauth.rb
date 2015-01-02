Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['YT_CLIENT_ID'], ENV['YT_CLIENT_SECRET'], scope: 'userinfo.profile,youtube'
end