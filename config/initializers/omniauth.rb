Rails.application.config.middleware.use OmniAuth::Builder do
# Hard coding the App ID and App secret instead of using ENV variables however for production this would not be the case
  provider :facebook, '917670985025848', '836994578ebb474ae6c4c32ffa5622a4',
  			scope: "public_profile, email", info_fields: "id, name, email"

end