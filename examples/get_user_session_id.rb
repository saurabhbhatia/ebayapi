#!/usr/bin/ruby
$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__),'..', 'lib')

require 'ebay'
require 'config'

# This is the same as add_item, but doesn't actually list the item
ebay = Ebay::Api.new


begin
  # response = ebay.verify_add_item(:item => item)               
  response = ebay.get_session_id
  puts "Getting session id"

  puts "session ID: #{response.session_id}"

rescue Ebay::RequestError => e
  e.errors.each do |error|
    puts error.long_message
  end
end
