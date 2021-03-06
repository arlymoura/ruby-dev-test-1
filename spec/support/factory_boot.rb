require 'factory_bot'
require "shoulda/matchers"

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

RSpec.configure do |config|
   config.include(Shoulda::Matchers::ActiveModel, type: :model)
    config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end