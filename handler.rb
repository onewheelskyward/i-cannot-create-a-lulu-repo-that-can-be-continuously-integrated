require 'json'
require 'rest-client'

module Lambda
  class Webhook
    def self.handler(event:, context:)
      puts event.inspect.to_json
      # RestClient.get ENV['slack_webhook_uri']
      { statusCode: 200, body: {result: 'ok'}.to_json }
    end
  end
end
