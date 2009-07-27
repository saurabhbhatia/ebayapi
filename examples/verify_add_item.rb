#!/usr/bin/ruby
$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__),'..', 'lib')

require 'ebay'
require 'config'

# This is the same as add_item, but doesn't actually list the item
ebay = Ebay::Api.new

return_policy = Ebay::Types::ReturnPolicy.new(
  :returns_accepted_option => 'ReturnsNotAccepted'
)

shipping_service = Ebay::Types::ShippingServiceOptions.new(
  :shipping_service => "UPSGround",
  :shipping_service_cost => Money.new(5, 'USD')
)

shipping_details = Ebay::Types::ShippingDetails.new(
  :default_shipping_cost => Money.new(5, 'USD'),
  :shipping_service_options => [shipping_service]
)

item = Ebay::Types::Item.new(
  :primary_category => Ebay::Types::Category.new(:category_id => 57883),
  :title => 'Ruby eBay API Test Listing',
  :description => 'Welcome!',
  :location => 'San Francisco, CA',
  :start_price => Money.new(1200, 'USD'),
  :quantity => 1,
  :listing_duration => 'Days_7',
  :country => 'US',
  :return_policy => return_policy,
  :shipping_details => shipping_details,
  :currency => 'USD',
  :dispatch_time_max => 5,
  # :payment_methods => ['VisaMC', 'PersonalCheck']
  :payment_methods => ['VisaMC']
)

begin
  response = ebay.verify_add_item(:item => item)               
  # response = ebay.add_item(:item => item)       
  puts "Verifying item"

  puts "Item ID: #{response.item_id}"
  puts "Fee summary: "
  response.fees.select{|f| !f.fee.zero? }.each do |f|
    puts "  #{f.name}: #{f.fee.format(:with_currency)}"
  end
rescue Ebay::RequestError => e
  e.errors.each do |error|
    puts error.long_message
  end
end
