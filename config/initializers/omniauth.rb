Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, "91b0e26c573967db1638", "c5a0175de4e0270189d38d8cc26d4fd51094d9f2"
end
