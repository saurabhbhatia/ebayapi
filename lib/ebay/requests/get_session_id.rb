
module Ebay # :nodoc:
  module Requests # :nodoc:
    # == Attributes
    #  text_node :ru_name, 'RuName', :optional => true
    class GetSessionID < Abstract
      include XML::Mapping
      include Initializer
      root_element_name 'GetSessionIDRequest'
      object_node :app_requester_credentials, 'RequesterCredentials', :class => AppRequesterCredentials, :optional => true
      text_node :ru_name, 'RuName', :optional => true
    end
  end
end


