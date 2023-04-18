require 'shopify_api'

# Set up the Shopify API credentials
ShopifyAPI::Base.site = 'https://test-rails9.myshopify.com/'
ShopifyAPI::Base.api_key = 'ab1c5ade685caaccead50c95a31d1cc0'
ShopifyAPI::Base.password = '8f476bff13a4d2d6b045af9df7f4b3da'

# Set up the ShopifyAPI::Context
ShopifyAPI::Context.initialize(
  api_key: 'ab1c5ade685caaccead50c95a31d1cc0',
  password: '8f476bff13a4d2d6b045af9df7f4b3da',
  host: 'https://test-rails9.myshopify.com/',
  api_version: '2021-10'
)

# Make API requests here
products = ShopifyAPI::Product.all
puts products.inspect

# More API requests...
