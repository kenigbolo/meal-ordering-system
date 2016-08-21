Rails.application.config.middleware.use OmniAuth::Builder do
# Hard coding the App ID and App secret instead of using ENV variables however for production this would not be the case
  provider :facebook, ENV["FACEBOOK_ID"], ENV["FACEBOOK_SECRET"],
  			scope: "public_profile, email", info_fields: "id, name, email"
  provider :github, ENV["GITHUB_ID"], ENV["GITHUB_SECRET"],
  			scope: "user:email", info_fields: "id, name, email"
  provider :bitbucket, ENV["BITBUCKET_ID"], ENV["BITBUCKET_SECRET"]
end