# config/initializers/mango_handcart.rb

# Setup Mango Handcart Gem here
MangoHandcart.configure do |config|

  # Setup the domain constraints (Default: [])
  # config.domain_constraints = ["dummy.dev"]

  # Enable/Disable A-Record domain lookups (Default: false)
  # config.enable_a_record_lookups = false

  # The list of subdomains which cannot be assigned to a DNS record
  # config.reserved_subdomains = ["www", "ftp", "ssh", "pop3", "dev", "master", "customer", "reseller", "admin"]

end
