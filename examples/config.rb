Ebay::Api.configure do |ebay|
  # Used for single user applications...
  # ebay.auth_token = 'PASTE_YOURS_HERE'
  ebay.dev_id   = 'PASTE_YOURS_HERE'
  ebay.app_id   = 'PASTE_YOURS_HERE'
  ebay.cert     = 'PASTE_YOURS_HERE'
  ebay.ru_name  = 'PASTE_YOURS_HERE'
  
  # The default environment is the production environment
  # Override by setting use_sandbox to true
  ebay.use_sandbox = true
  
  # If you need to run any of the following:
  # SetReturnURL GetReturnURL GetRuName FetchToken
  # Then you'll need to set the username and password for the account
  # ebay.username = 'username'
  # ebay.password = 'password'
end