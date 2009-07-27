
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :username, 'Username', :optional => true
    #  text_node :password, 'Password', :optional => true
    #  text_node :ebay_auth_token, 'eBayAuthToken', :optional => true
    class AppRequesterCredentials
      include XML::Mapping
      include Initializer
      root_element_name 'RequesterCredentials'
      text_node :app_id, 'AppId', :optional => false
      text_node :dev_id, 'DevId', :optional => false
      text_node :auth_cert, 'AuthCert', :optional => false
    end
  end
end


