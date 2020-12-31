require 'telegram_api/version' unless defined?(TelegramApi::VERSION)

Dir[File.dirname(__FILE__) + '/telegram_api/*.rb'].sort.each do |file|
  require file
end

module TelegramApi
  class Error < StandardError; end

  def self.client
    @client ||= Client.new
  end
end
